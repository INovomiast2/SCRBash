#!/bin/bash

fichero=/etc/passwd
usuario=$1

if [  ] ; then
    echo "Uso: `basename $0` nombreUsuario"
    exit 1  
fi

while read linea ; do
    echo "$linea" | grep $1 | awk -F":" '{ print $5 }'
done <$fichero
#Script by: INovomiast