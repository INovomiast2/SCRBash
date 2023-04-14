#!/bin/bash

for fichero in $*; do
    if [ -f $fichero ]; then
        echo "Contenido del fichero: " $fichero
        cat $fichero
    fi
done

# Script by: INovomiast