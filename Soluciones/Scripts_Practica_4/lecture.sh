#!/bin/bash
if [ $# -eq 1 ]; then

    if [-r $1 -a -f $1 ]; then
        more $1
    else
        echo "El fichero no tiene permisos de lectura"
    fi
else
    echo "ERROR, No se ha pasado el fichero"
fi

# Script by: INovomiast
