#!/bin/bash

echo -n "Escribe el nombre del directorio: "

read DIRECTORIO

if [ -d $DIR ]; then
    ls $DIR
else
    echo "ERROR, No existe el directorio: " $DIR
fi