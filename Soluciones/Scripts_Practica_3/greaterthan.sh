#!/bin/bash
#Uso: ./ejercicio4.sh [num1] [num2]

if [ "$1" -gt "$2" ] ; then
    echo "$num1 es mayor que $num2"
elif [ "$2" -gt "$1" ] ; then
    echo "$2 es mayor que $1"
fi

#Script by: INovomiast