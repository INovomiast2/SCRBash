#!/bin/bash
#Uso: redir.sh [fichero]

if [ -z "$1" ] ; then
    Fichero=nombres.data    #Fichero por defecto
else
    Fichero=$1
fi

TRUE=1

if [ "$TRUE" ] ; then
    read name
    echo $name
fi <"$Fichero"

#Script by: INovomiast