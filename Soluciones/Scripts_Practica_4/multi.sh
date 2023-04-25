#!/bin/bash

function MostrarFicheros() {
    for FICHERO in $*; do
        if [ -f $FICHERO -a -r $FICHERO ]; then
            echo El contenido del fichero $FICHERO es:
            less $FICHERO
        fi
    done
}

function EjecutarPrograma() {
    for FICHERO in $*; do
        if [ -f $FICHERO -a -x $FICHERO ]; then
            ./$FICHERO
        fi
    done
}

function Propietario() {
    for FICHERO in $*; do
        ls -l $FICHERO | cut -d" " -f3
    done
}

echo "Ejecuta este script el Usuario: " $LOGNAME

if [ $# -eq 0 ]; then
    more $0
else
    OPCION=$1
    shift
    case $OPCION in
        "-m") MostrarFicheros $*;;
        "-x") EjecutarPrograma $*;;
        "-p") Propietario $*;;
        *) echo "Opcion Incorrecta!";;
    esac
fi

# Script by: INovomiast