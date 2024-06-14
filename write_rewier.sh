#!/bin/bash

is_prime_result=$(is_prime $PID)
rew_prime_result=$(rew_prime $PID)
    if [ $is_prime_result == $rew_prime_result ]; then
        all_error=0
        all_error+=1
        echo " Для процесса $NAME_P найдена ошибка.\n
        Число(PID) $PID на самом деле составное, а в файле написано простое." >> .rewier_report.txt
    fi