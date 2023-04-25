#!/bin/bash

if [$# -ne 0]; then
    if [ ! -d Backup ]; then
        mkdir Backup
    fi

    for FICHERO in $*; do
        if [ -f $FICHERO -a -w $FICHERO ]; then
            mv $FICHERO Backup
        fi
    done
else
    echo "ERROR, no se han pasado ficheros por parametro."
fi

# Script by: INovomiast