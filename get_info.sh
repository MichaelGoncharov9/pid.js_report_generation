#!/bin/bash
ALL_PID=$(ps aux | wc -l) # всего процессов.

nr=2
PID=$(ps aux |awk -v nr="$nr" 'NR==nr { print $2 }') # первый PID 
NAME_PID=$(ps aux | awk ' NR==2 { print $11 }' ) # имя первого процесса.

#пред_вывод
echo "имя первого процесса: $NAME_PID"
echo "все $ALL_PID "
echo "$PID"