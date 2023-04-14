#!/bin/bash

if [  ]; then
    mkdir -p Seguridad
fi

for fichero in $*; do
    if [ -f $fichero ]; then
        cp $fichero Seguridad
    fi
done

# Script by: INovomiast