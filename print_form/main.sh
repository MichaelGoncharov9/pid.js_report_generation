#!/bin/bash
ALL_PID=$(ps aux | wc -l) # всего процессов.

touch .rewier_report.txt
echo "[" > report.js
for nr in $(seq 2 $ALL_PID); do
    source variables.sh
    . print_form/write_rewier.sh
    . print_form/write_prosses_list.sh
done
echo "]" >> report.js
cat report.js