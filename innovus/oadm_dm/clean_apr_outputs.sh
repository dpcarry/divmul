#!/usr/bin/env bash
set -euo pipefail

# Remove generated APR data while preserving all source/configuration inputs.
rm -rf \
    .cadence \
    summaryReport \
    timingReports \
    oadm_dm.floorplan.enc oadm_dm.floorplan.enc.dat \
    oadm_dm.placed.enc oadm_dm.placed.enc.dat \
    oadm_dm.clock.enc oadm_dm.clock.enc.dat \
    oadm_dm.routed.enc oadm_dm.routed.enc.dat \
    oadm_dm.final.enc oadm_dm.final.enc.dat

rm -f \
    ccopt_clock_tree.spec \
    final_cap.tarpt \
    oadm_dm.PG.v \
    oadm_dm.antenna.lef \
    oadm_dm.antenna.rpt \
    oadm_dm.antenna.rpt.old \
    oadm_dm.cdl \
    oadm_dm.conn.rpt \
    oadm_dm.conn.rpt.old \
    oadm_dm.critnet.rpt \
    oadm_dm.final.check_place.rpt \
    oadm_dm.final.def \
    oadm_dm.gds \
    oadm_dm.geom.rpt \
    oadm_dm.geom.rpt.old \
    oadm_dm.hold.rpt \
    oadm_dm.lef \
    oadm_dm.lib \
    oadm_dm.nophy.v \
    oadm_dm.phy.v \
    oadm_dm.place \
    oadm_dm.power.rpt \
    oadm_dm.sdf \
    oadm_dm.setup.rpt \
    oadm_dm.spef \
    oadm_dm.summary.rpt \
    oadm_dm.verilog.sdf \
    oadm_dm.verilog.sdf_max.csd

rm -f \
    innovus*.cmd* innovus*.log* \
    close_*.cmd* close_*.log* \
    mmmc_*_check.cmd* mmmc_*_check.log* \
    rc_corner_help.cmd* rc_corner_help.log* \
    model.asrt.*
