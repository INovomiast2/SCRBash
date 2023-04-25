#!/bin/bash

if [ -f $1 ] ; then
    echo "$1 - Si existe el archivo!"
elif [ -d $1 ] ; then
    echo "$1 - Es un directorio!"
else
    echo "$1 - Archivo o Directorio no existente!"
fi

#Script by: INovomiast