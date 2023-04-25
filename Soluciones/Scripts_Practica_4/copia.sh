#!/bin/bash

if [ $# -ne 0 ]; then
    tar -cvfz Copia.bkp $* 2> /dev/null
else
    echo "ERROR, no se han pasado ficheros por parametro."
    exit 128
fi

# Script by: INovomiast