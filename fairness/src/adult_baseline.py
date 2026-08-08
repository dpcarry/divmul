#!/usr/bin/env python3
"""Train and evaluate the accurate Adult Income MLP baseline."""

import argparse
import json
import random
from pathlib import Path

import numpy as np
import pandas as pd
import torch
import yaml
from joblib import dump
from fairlearn.metrics import (
    demographic_parity_difference,
    equalized_odds_difference,
)
from sklearn.compose import ColumnTransformer
from sklearn.datasets import fetch_openml
from sklearn.impute import SimpleImputer
from sklearn.metrics import accuracy_score, f1_score
from sklearn.model_selection import train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from torch import nn
from torch.utils.data import DataLoader, TensorDataset


class AdultMLP(nn.Module):
    def __init__(self, input_features, hidden_sizes, dropout):
        super().__init__()
        layers = []
        width = input_features
        for hidden_width in hidden_sizes:
            layers.extend(
                [
                    nn.Linear(width, hidden_width),
                    nn.ReLU(),
                    nn.Dropout(dropout),
                ]
            )
            width = hidden_width
        layers.append(nn.Linear(width, 1))
        self.network = nn.Sequential(*layers)

    def forward(self, features):
        return self.network(features).squeeze(1)


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", type=Path, required=True)
    parser.add_argument(
        "--data-dir", type=Path, default=Path("fairness/data/openml")
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("fairness/results/accurate_baseline"),
    )
    return parser.parse_args()


def set_deterministic(seed):
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.use_deterministic_algorithms(True)


def load_adult(data_dir, sensitive_attribute):
    adult = fetch_openml(
        name="adult",
        version=2,
        as_frame=True,
        data_home=data_dir,
        parser="auto",
    )
    features = adult.data.copy()
    target = adult.target.astype(str).str.strip().eq(">50K").astype(np.float32)
    sensitive = features[sensitive_attribute].astype(str).str.strip()
    # Sensitive labels are reserved for profiling/evaluation, not inference.
    features = features.drop(columns=[sensitive_attribute])
    return features, target, sensitive


def stratification_labels(target, sensitive):
    return target.astype(str) + "_" + sensitive.astype(str)


def split_data(features, target, sensitive, config):
    train_x, test_x, train_y, test_y, train_s, test_s = train_test_split(
        features,
        target,
        sensitive,
        test_size=config["test_size"],
        random_state=config["seed"],
        stratify=stratification_labels(target, sensitive),
    )
    train_x, val_x, train_y, val_y, train_s, val_s = train_test_split(
        train_x,
        train_y,
        train_s,
        test_size=config["validation_size"],
        random_state=config["seed"],
        stratify=stratification_labels(train_y, train_s),
    )
    return train_x, val_x, test_x, train_y, val_y, test_y, train_s, val_s, test_s


def make_preprocessor(features):
    numeric_columns = features.select_dtypes(include=["number"]).columns.tolist()
    categorical_columns = [
        column for column in features.columns if column not in numeric_columns
    ]
    numeric_pipeline = Pipeline(
        [
            ("imputer", SimpleImputer(strategy="median")),
            ("scaler", StandardScaler()),
        ]
    )
    categorical_pipeline = Pipeline(
        [
            ("imputer", SimpleImputer(strategy="most_frequent")),
            (
                "onehot",
                OneHotEncoder(handle_unknown="ignore", sparse_output=False),
            ),
        ]
    )
    return ColumnTransformer(
        [
            ("numeric", numeric_pipeline, numeric_columns),
            ("categorical", categorical_pipeline, categorical_columns),
        ]
    )


def tensor_dataset(features, target):
    return TensorDataset(
        torch.from_numpy(np.asarray(features, dtype=np.float32)),
        torch.from_numpy(np.asarray(target, dtype=np.float32)),
    )


def predict_probabilities(model, features, batch_size):
    loader = DataLoader(tensor_dataset(features, np.zeros(len(features))), batch_size)
    probabilities = []
    model.eval()
    with torch.no_grad():
        for batch_features, _ in loader:
            probabilities.append(torch.sigmoid(model(batch_features)).numpy())
    return np.concatenate(probabilities)


def train_model(model, train_data, val_features, val_target, config):
    loader_generator = torch.Generator().manual_seed(config["seed"])
    train_loader = DataLoader(
        train_data,
        batch_size=config["batch_size"],
        shuffle=True,
        generator=loader_generator,
    )
    optimizer = torch.optim.AdamW(
        model.parameters(),
        lr=config["learning_rate"],
        weight_decay=config["weight_decay"],
    )
    loss_function = nn.BCEWithLogitsLoss()
    history = []
    best_state = None
    best_validation_loss = float("inf")

    for epoch in range(1, config["epochs"] + 1):
        model.train()
        total_loss = 0.0
        for batch_features, batch_target in train_loader:
            optimizer.zero_grad(set_to_none=True)
            loss = loss_function(model(batch_features), batch_target)
            loss.backward()
            optimizer.step()
            total_loss += loss.item() * len(batch_target)

        model.eval()
        with torch.no_grad():
            validation_logits = model(torch.from_numpy(val_features))
            validation_loss = loss_function(
                validation_logits, torch.from_numpy(val_target)
            ).item()
        training_loss = total_loss / len(train_data)
        history.append(
            {
                "epoch": epoch,
                "train_loss": training_loss,
                "validation_loss": validation_loss,
            }
        )
        if validation_loss < best_validation_loss:
            best_validation_loss = validation_loss
            best_state = {
                name: value.detach().clone()
                for name, value in model.state_dict().items()
            }
        print(
            "epoch=%02d train_loss=%.6f validation_loss=%.6f"
            % (epoch, training_loss, validation_loss)
        )

    model.load_state_dict(best_state)
    return history


def group_rate(target, prediction, group_mask, rate):
    group_target = target[group_mask]
    group_prediction = prediction[group_mask]
    if rate == "tpr":
        denominator_mask = group_target == 1
    else:
        denominator_mask = group_target == 0
    if not denominator_mask.any():
        return float("nan")
    return float(group_prediction[denominator_mask].mean())


def evaluate(target, probability, sensitive, config):
    target = np.asarray(target, dtype=np.int64)
    prediction = (probability >= config["decision_threshold"]).astype(np.int64)
    sensitive = np.asarray(sensitive, dtype=str)
    groups = [config["privileged_group"], config["unprivileged_group"]]
    group_metrics = {}

    for group in groups:
        mask = sensitive == group
        group_metrics[group] = {
            "count": int(mask.sum()),
            "accuracy": float(accuracy_score(target[mask], prediction[mask])),
            "positive_prediction_rate": float(prediction[mask].mean()),
            "true_positive_rate": group_rate(target, prediction, mask, "tpr"),
            "false_positive_rate": group_rate(target, prediction, mask, "fpr"),
        }

    group_accuracies = [metrics["accuracy"] for metrics in group_metrics.values()]
    privileged = group_metrics[config["privileged_group"]]
    unprivileged = group_metrics[config["unprivileged_group"]]
    return {
        "overall_accuracy": float(accuracy_score(target, prediction)),
        "f1_score": float(f1_score(target, prediction)),
        "worst_group_accuracy": min(group_accuracies),
        "group_accuracy_gap": abs(group_accuracies[0] - group_accuracies[1]),
        "demographic_parity_difference": float(
            demographic_parity_difference(
                target, prediction, sensitive_features=sensitive
            )
        ),
        "equal_opportunity_difference": abs(
            privileged["true_positive_rate"]
            - unprivileged["true_positive_rate"]
        ),
        "equalized_odds_difference": float(
            equalized_odds_difference(
                target, prediction, sensitive_features=sensitive
            )
        ),
        "groups": group_metrics,
    }


def main():
    args = parse_args()
    config = yaml.safe_load(args.config.read_text(encoding="utf-8"))
    set_deterministic(config["seed"])
    args.out_dir.mkdir(parents=True, exist_ok=True)

    features, target, sensitive = load_adult(
        args.data_dir, config["sensitive_attribute"]
    )
    splits = split_data(features, target, sensitive, config)
    train_x, val_x, test_x, train_y, val_y, test_y, _, _, test_s = splits
    preprocessor = make_preprocessor(train_x)
    train_features = preprocessor.fit_transform(train_x).astype(np.float32)
    val_features = preprocessor.transform(val_x).astype(np.float32)
    test_features = preprocessor.transform(test_x).astype(np.float32)
    train_target = train_y.to_numpy(dtype=np.float32)
    val_target = val_y.to_numpy(dtype=np.float32)

    model = AdultMLP(
        train_features.shape[1], config["hidden_sizes"], config["dropout"]
    )
    history = train_model(
        model,
        tensor_dataset(train_features, train_target),
        val_features,
        val_target,
        config,
    )
    probabilities = predict_probabilities(
        model, test_features, config["batch_size"]
    )
    metrics = evaluate(test_y, probabilities, test_s, config)

    (args.out_dir / "metrics.json").write_text(
        json.dumps(metrics, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    pd.DataFrame(history).to_csv(args.out_dir / "training_history.csv", index=False)
    dump(preprocessor, args.out_dir / "preprocessor.joblib")
    torch.save(model.state_dict(), args.out_dir / "adult_mlp.pt")
    print(json.dumps(metrics, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
