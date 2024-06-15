#!/bin/bash
wie_viele_errors=$(wc -l < .rewier_report.txt)
wie_viele_errors=$(echo "$wie_viele_errors / 2" | bc)
#unter
echo "В файле найдены ошибки: $wie_viele_errors из $ALL_PID процессов." >> .rewier_report.txt

read -p "Проверить на ошибки?(y/n) " value
if [[ $value == 'Y' || $value == 'y' ]]; then
    cat .rewier_report.txt
else
    rm .rewier_report.txt
    echo "Без проверки."
fi
