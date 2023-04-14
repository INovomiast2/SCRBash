#!/bin/bash

for fichero in $*; do
    if [ -f $fichero ]; then
        echo $fichero " es un fichero."
    elif [ -d $fichero ]; then
        echo $fichero " es un directorio."
    else
        echo $fichero " no existe o es incorrecto."
    fi
done

# Script by: INovomiast