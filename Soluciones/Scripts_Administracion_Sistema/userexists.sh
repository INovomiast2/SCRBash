#!/bin/bash

#Debe ser Superuser para ejecutar userexists.sh
if [ $UID -ne 0 ] ; then
    echo "Debe ejecutar $0 como Root."
    exit 1
fi

#Comprobación de los argumentos
if [ $# -ne "1" ] ; then
    echo "Uso: `basename $0` usuario"
    exit 2
fi

usuario=$1

#Comprobacion del archivo /etc/passwd
cut -d: -f1 /etc/passwd | grep "$usuario" > /dev/null
OUT=$?

if [ $OUT -eq 0 ] ; then
    echo "El usuario $usuario existe en el sistema!"
else
    echo "El usuario $usuario no existe en el sistema."
fi

#Script by: INovomiast