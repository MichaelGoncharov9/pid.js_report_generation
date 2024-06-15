#!/bin/bash

read -p "Нужна ли фильтрация? (y/n) " choice
if [[ $choice == 'y' || $choice == 'Y' ]]; then
    read -p "Фильтрация по регулярному выражению? (y/n) " choice
    if [[ $choice == 'y' || $choice == 'Y' ]]; then
        read -p "Введите регулярное выражение: " value
        export REG="$value"
        cat report.js | grep -E "$REG"
    else
        read -p "true/false? (t/f) " value
        if [[ $value == 't' || $value == 'T' ]]; then
            value="true"
            cat report.js | grep -B 3 -A 1 "$value"
        elif [[ $value == 'f' || $value == 'F' ]]; then
            value="false"
            cat report.js | grep -B 3 -A 1 "$value"
        fi
    fi
else
    echo "Без фильтрации."
fi
