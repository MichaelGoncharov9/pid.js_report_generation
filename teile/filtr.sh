#!/bin/bash

read -p "Нужна ли фильтрация? (y/n) " choice
if [[ $choice == 'y' || $choice == 'Y' ]]; then
    read -p "Введите имя процесса: " value
    export PROCESS_NAME="$value"
    awk -v process_name="$PROCESS_NAME" '
    BEGIN { found = 0 }
    /Process Name: / {
        if ($0 ~ process_name) {
            found = 1
        } else {
            found = 0
        }
    }
    found { print }
    ' report.js
else
    echo "Без фильтрации."
fi
