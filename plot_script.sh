#!/bin/bash

# This script is for plotting the results for the shadow analyze step

SKIP=$((946684800 + 1800))
SHADOW=
SHADOWTORPLUGIN=

python $SHADOW/src/tools/plot-shadow.py \
       --data ../baseline/results_web "baseline web" \
       --data ../multicore/results_web "multicore web" \
       --data ../singlecore/results_web "singlecore web" \
       --data ../baseline/results_bulk "baseline bulk" \
       --data ../multicore/results_bulk "multicore bulk" \
       --data ../singlecore/results_bulk "singlecore bulk" \
       --prefix "web_bulk" \
       --format "k-.,g-.,m-.,k-,g-,m-" \
       --no-title \
       --skip $SKIP

python $SHADOW/src/tools/plot-shadow.py \
       --data ../baseline/results_all "baseline" \
       --data ../multicore/results_all "multicore" \
       --data ../singlecore/results_all "singlecore" \
       --prefix "all" \
       --format "k-,g-,m-" \
       --no-title \
       --skip $SKIP

python $SHADOWTORPLUGIN/tools/parse-payment.py \
  ../multicore/shadow.data/hosts --prefix results_all_payment

python $SHADOW/src/tools/plot-shadow.py \
  --data results_all_payment "msg" \
  --prefix "pay" \
  --format "g-,g:,m-,m:,y-,y:" \
  --no-title \
  --skip $SKIP

