#!/bin/bash

DIR="~/Code/shadow-net/experiment_launcher"
SHADOWTORPLUGIN=

python $SHADOWTORPLUGIN/tools/generate.py --nauths 3 --nrelays 100 --nclients 1000 --nintermediaries 10 --nservers 100 --fwebnonprem 0.84 --fwebpremium 0.0 --fbulknonprem 0.16 --fbulkpremium 0.0 --flowmod 0.0 ${DIR}/net_data/alexa-top-1000-ips.csv ${DIR}/net_data/consensuses-2018-02/03/2018-02-03-00-00-00-consensus ${DIR}/net_data/server-descriptors-2018-02/ ${DIR}/net_data/extra-infos-2018-02/ ${DIR}/net_data/clients.csv
