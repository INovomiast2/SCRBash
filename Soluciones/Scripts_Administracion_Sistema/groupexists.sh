#!/bin/bash

#Check if Superuser
if [ $UID -ne 0 ] ; then
    echo "Debe ejecutar $0 como Root."
    exit 1
fi

#Check Arguments
if [ $# -ne "1" ] ; then
    echo "Uso: `basename $0` [nombre_grupo]"
    exit 2
fi

grupo=$1

#Check existance of Group by /etc/group
cut -d: -f1 /etc/group | grep "$grupo" > /dev/null
OUT=$?

if [ $OUT -eq 0 ] ; then
    echo "El grupo $grupo existe en el sistema!"
else
    echo "El grupo $grupo no existe en el sistema."
fi

#Script by: INovomiast