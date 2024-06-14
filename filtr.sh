#!/bin/bash

read -p "Нужна ли фильтрация?(y/n) " filtr
if [ $filtr == 'y' | $filtr == 'Y' ]; then
    read -p "True/False? (t/f) " value
    if [ $value == 't' | $value == 'T' ]; then
        $value == 'true'
        cat report.js | grep -B 3 -A 1 $value
    elif [ $value == 'f' | $value == 'F' ]; then
        $value == 'false'
        cat report.js | grep -B 3 -A 1 $value
    fi
else
    echo "Без фильтрации."
fi
