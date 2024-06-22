#!/bin/bash
source functions/is_prime.sh
source functions/rew_prime.sh

PID=$(ps aux | awk -v nr="$nr" 'NR==nr { print $2 }')
NAME_P=$(ps aux | awk -v nr="$nr" 'NR==nr { print $11 }' )
is_prime_result=$(is_prime $PID)
rew_prime_result=$(rew_prime $PID)

