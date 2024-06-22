#!/bin/bash
source variables.sh
if [ -n "$PID" ] && [ -n "$NAME_P" ] && [ $nr -lt $ALL_PID ]; then
    echo "
        {
            "Process Name": "$NAME_P",
            "Process ID": "$PID",
            "Is Prime": "$is_prime_result"
        }," >> report.js
elif  [ -n "$PID" ] && [ -n "$NAME_P" ] && [ $nr -eq $ALL_PID ]; then
    echo "
        {
            "Process Name": "$NAME_P",
            "Process ID": "$PID",
            "Is Prime": "$is_prime_result"
        }" >> report.js
fi