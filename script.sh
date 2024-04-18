#!/bin/bash

awk -v path="$1" '/^[[:space:]]+image/ && !p_chng{sub(/:.+$/,": "path); p_chng=1} 1' websdk-deployment.yml > tmp
mv tmp websdk-deployment.yml
cat websdk-deployment.yml
