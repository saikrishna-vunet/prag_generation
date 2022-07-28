#!/usr/bin/env bash
set -euxo pipefail

# Modify these path variables, if needed!
PYTHON2=/home/saikrishna/prag_generation/.env/bin/python2.7
E2E_METRICS_FOLDER=/home/saikrishna/prag_generation/e2e-incre/e2e-metrics

REF_FNAME=$1
PRED_FNAME=$2

echo 'Running evaluation script (dev)'
$PYTHON2 $E2E_METRICS_FOLDER/measure_scores.py $REF_FNAME $PRED_FNAME
