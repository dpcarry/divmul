#!/bin/bash

set -euo pipefail

# The course hosts do not provide /var/tmp, which v2lvs otherwise selects.
export TMPDIR="${TMPDIR:-/tmp}"
export MGC_TMPDIR="${MGC_TMPDIR:-$TMPDIR}"

DESIGN=oadm_dm
CELL_SPICE=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Back_End/spice/tcbn65gplus_200a/tcbn65gplus_200a.spi
CDL_TMP="${DESIGN}.cdl.tmp"

trap 'rm -f "$CDL_TMP"' EXIT

v2lvs -i \
  -v "${DESIGN}.PG.v" \
  -o "$CDL_TMP" \
  -s "${CELL_SPICE}" \
  -lsr "${CELL_SPICE}"

if grep -qi "could not be licensed" v2lvs.log || [ ! -s "$CDL_TMP" ]; then
  echo "ERROR: v2lvs did not produce a licensed CDL conversion" >&2
  exit 1
fi

mv "$CDL_TMP" "${DESIGN}.cdl"
echo "Generated ${DESIGN}.cdl"
