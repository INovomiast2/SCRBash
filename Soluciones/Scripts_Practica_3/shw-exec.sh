#!/bin/bash

if [ $# -eq 2 ]; then
    case $1 in
        "-e") ./$2 ;;
        "-m") cat $2 ;;
        *) echo "Opción Incorrecta!!" ;;
    esac
else
    echo "Número de Parametros no suficiente!!"
fi

# Script by: INovomiast