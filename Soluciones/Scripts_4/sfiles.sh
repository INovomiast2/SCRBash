#!/bin/bash
#Uso: sfiles [-v] fichero1

if [ $# -eq 0 ] ; then
    echo "Uso: sfiles [-v] fichero1..." 1>&2
    exit 1
fi

if [ "$1" = "-v" ] ; then
    shift
    less -- "$@"
else
    cat -- "$@"
fi

#Script by: INovomiast