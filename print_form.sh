#!/bin/bash

echo "[" > report.js
for nr in $(seq 2 $ALL_PID); do
    PID=$(ps aux | awk -v nr="$nr" 'NR==nr { print $2 }')
    NAME_P=$(ps aux | awk -v nr="$nr" 'NR==nr { print $11 }' )

    . write_rewier.sh
    . write_prosses_list.sh

done

echo "]" >> report.js

cat report.js