#!/usr/bin/env python3
"""Compare vectorized OADM multiplication against the current RTL."""

from __future__ import annotations

import argparse
import random
import re
import subprocess
from pathlib import Path

import torch

from oadm_emulator import approximate


RESULT_PATTERN = re.compile(r"RESULT\s+(\d+)\s+([0-9a-fA-F]{8})")


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--random-cases", type=int, default=16)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument(
        "--reuse-transcript",
        action="store_true",
        help="parse an existing ModelSim transcript instead of launching vsim",
    )
    parser.add_argument(
        "--work-dir",
        type=Path,
        default=Path("fairness/rtl_validation"),
    )
    return parser.parse_args()


def fp32_from_bits(bits):
    return torch.tensor(bits, dtype=torch.int64).to(torch.int32).view(torch.float32)


def fp32_bits(value):
    return int(value.contiguous().view(torch.int32).item()) & 0xFFFFFFFF


def generate_vectors(random_cases, seed):
    directed = [
        (0x3F800000, 0x3F800000),
        (0x40000000, 0x3F000000),
        (0xC0200000, 0x3FC00000),
        (0x00000000, 0x3F800000),
        (0x7F800000, 0x3F800000),
        (0x7FC12345, 0x3F800000),
    ]
    rng = random.Random(seed)
    random_vectors = []
    for _ in range(random_cases):
        sign_x = rng.randrange(2) << 31
        sign_y = rng.randrange(2) << 31
        exponent_x = rng.randrange(1, 255) << 23
        exponent_y = rng.randrange(1, 255) << 23
        random_vectors.append(
            (
                sign_x | exponent_x | rng.randrange(1 << 23),
                sign_y | exponent_y | rng.randrange(1 << 23),
            )
        )
    return [
        (x, y, level, divide)
        for x, y in directed + random_vectors
        for level in range(4)
        for divide in (0, 1)
    ]


def main():
    args = parse_args()
    vectors = generate_vectors(args.random_cases, args.seed)
    args.work_dir.mkdir(parents=True, exist_ok=True)
    vector_path = args.work_dir / "vectors.txt"
    vector_path.write_text(
        "".join(
            f"{x:08x} {y:08x} {level} {divide}\n"
            for x, y, level, divide in vectors
        ),
        encoding="ascii",
    )

    if args.reuse_transcript:
        simulation_output = (args.work_dir / "transcript").read_text(
            encoding="utf-8", errors="replace"
        )
    else:
        completed = subprocess.run(
            ["make", "run"],
            cwd=args.work_dir,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            check=False,
        )
        if completed.returncode:
            print(completed.stdout)
            raise SystemExit(completed.returncode)
        simulation_output = completed.stdout
    rtl_results = {
        int(index): int(bits, 16)
        for index, bits in RESULT_PATTERN.findall(simulation_output)
    }
    if len(rtl_results) != len(vectors):
        print(simulation_output)
        raise RuntimeError(
            f"RTL returned {len(rtl_results)} of {len(vectors)} vectors"
        )

    mismatches = []
    for index, (x_bits, y_bits, level, divide) in enumerate(vectors):
        expected = approximate(
            fp32_from_bits(x_bits), fp32_from_bits(y_bits), level, bool(divide)
        )
        expected_bits = fp32_bits(expected)
        if expected_bits != rtl_results[index]:
            mismatches.append(
                (
                    index,
                    x_bits,
                    y_bits,
                    level,
                    divide,
                    expected_bits,
                    rtl_results[index],
                )
            )

    if mismatches:
        for mismatch in mismatches[:10]:
            print(
                "mismatch index=%d x=%08x y=%08x level=%d divide=%d "
                "python=%08x rtl=%08x"
                % mismatch
            )
        raise SystemExit(f"FAIL: {len(mismatches)} RTL mismatches")
    print(f"PASS: Python matched RTL for all {len(vectors)} MUL/DIV vectors")


if __name__ == "__main__":
    main()
