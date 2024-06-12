#!/bin/bash

echo "[" > report.js
for nr in $(seq 2 $ALL_PID); do
    PID=$(ps aux | awk -v nr="$nr" 'NR==nr { print $2 }') # первый PID 
    NAME_P=$(ps aux | awk -v nr="$nr" 'NR==nr { print $11 }' )
    if is_prime $NR; then
            IS_PRIME=true
        else
            IS_PRIME=false
        fi
    if [ -n "$PID" ] && [ -n "$NAME_P" ] && [ $nr -lt $ALL_PID ]; then
        echo "
            {
                "Process Name": "$NAME_P",
                "Process ID": "$PID",
                "Is Prime": true
            }," >> report.js
    elif [ $nr -eq $ALL_PID ]; then
        echo "
            {
                "Process Name": "$NAME_P",
                "Process ID": "$PID",
                "Is Prime": true
            }" >> report.js
    fi
done

echo "]" >> report.js

cat report.js