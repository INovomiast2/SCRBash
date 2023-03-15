#!/bin/bash

[ -N "$1" ] && echo "Fichero $1 ha sido modificado con posterioridad a su ultima lectura"
[ -N "$2" ] && echo "Fichero $2 ha sido modificado con posterioridad a su ultima lectura"
[ "$1" -nt "$2" ] && echo "$1 es más reciente que $2"
[ "$1" -ot "$2" ] && echo "$2 es más reciente que $1"

#Script by: INovomiast
