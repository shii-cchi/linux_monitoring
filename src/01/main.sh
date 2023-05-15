#!/bin/bash

if [ $# -ne 1 ]
    then
        if [ $# -eq 0 ]
            then
                echo "Ошибка. Введите 1 параметр."
        else
            echo "Ошибка. Вы ввели слишком много параметров. Введите 1 параметр."
        fi
else
    bash script.sh $1
fi
