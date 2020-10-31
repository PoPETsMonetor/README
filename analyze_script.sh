#!/bin/bash

#This script must be called where $PWD is the simulation directory

#path to shadow directory
SHADOW=

# generate data
python $SHADOW/src/tools/parse-tgen.py shadow.data/hosts --prefix results_web --filter "web"
python $SHADOW/src/tools/parse-tgen.py shadow.data/hosts --prefix results_bulk --filter "bulk"

python $SHADOW/src/tools/parse-tgen.py shadow.data/hosts --prefix results_all
python $SHADOW/src/tools/parse-shadow.py shadow.log --prefix results_all
