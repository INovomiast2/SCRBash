#!/bin/bash

ERROR="\e[0;31m"
ENDCOLOR="\e[0m"

GOOD="\e[1;32m"

if [ $# -eq 0 ] ; then
    echo -e "${ERROR}Debe especificar al menos un argumento.${ENDCOLOR}\n"
    exit 2
else
    echo -e "${GOOD}Argumentos Especificados: $@ ${ENDCOLOR}"
fi

#Script by: INovomiast