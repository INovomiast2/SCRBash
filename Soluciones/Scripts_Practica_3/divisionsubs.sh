#!/bin/bash

if [ $# -ne 2 ] ; then
    exit 1
fi

#Variables
dividendo=$1
divisor=$2
cociente=0

#Logica
while [ $dividendo -ge $divisor ] ; do
    dividendo=$(($dividendo - $divisor))2>/dev/null
    cociente=$(($cociente + 1))2>/dev/null
done

echo "El resultado de la división es: " $cociente


#Script by: INovomiast