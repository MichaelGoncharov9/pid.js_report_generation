#!/bin/bash
source variables.sh

if [ "$rew_prime_result" == 'False' ] || [ "$rew_prime_result" == 'false' ]; then
    if [ "$is_prime_result" == 'true' ]; then
        all_error=$((all_error + 1))
        echo " Для процесса $NAME_P найдена ошибка.
        Число (PID) $PID на самом деле составное, а в файле написано простое." >> .rewier_report.txt
    fi
elif [ "$rew_prime_result" == 'True' ] || [ "$rew_prime_result" == 'true' ]; then
    if [ "$is_prime_result" == 'false' ]; then
        all_error=$((all_error + 1))
        echo " Для процесса $NAME_P найдена ошибка.
        Число (PID) $PID на самом деле простое, а в файле написано составное." >> .rewier_report.txt
    fi
fi
