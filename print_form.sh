#!/bin/bash

echo "[" > report.js
for nr in $(seq 2 $ALL_PID); do
    PID=$(ps aux | awk -v nr="$nr" 'NR==nr { print $2 }')
    NAME_P=$(ps aux | awk -v nr="$nr" 'NR==nr { print $11 }' )
    is_prime_result=$(is_prime $PID)
    if [ -n "$PID" ] && [ -n "$NAME_P" ] && [ $nr -lt $ALL_PID ]; then
        echo "
            {
                "Process Name": "$NAME_P",
                "Process ID": "$PID",
                "Is Prime": "$is_prime_result"
            }," >> report.js
    elif [ $nr -eq $ALL_PID ]; then
        echo "
            {
                "Process Name": "$NAME_P",
                "Process ID": "$PID",
                "Is Prime": "$is_prime_result"
            }" >> report.js
    fi
done

echo "]" >> report.js

cat report.js