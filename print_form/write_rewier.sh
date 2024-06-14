#!/bin/bash
source variables.sh
echo '---' > .rewier_report.txt
if [ "$rew_prime_result" = 'False' ]; then
    all_error=0
    all_error+=1
    echo " Для процесса $NAME_P найдена ошибка.
    Число(PID) $PID на самом деле составное, а в файле написано простое." >> .rewier_report.txt
fi