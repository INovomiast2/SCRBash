#!/bin/bash

ERROR="\e[0;31m"
ENDCOLOR="\e[0m"

if [ $# -eq 0 ] ; then
    echo -e "${ERROR}Debe especificar al menos un argumento.${ENDCOLOR}\n"
    exit 2
fi

#Script by: INovomiast