#!/bin/bash

ENDCOLOR="\e[0m"

GOOD="\e[1;32m"

echo -n "Inserta la base de la potencia: "
read base

echo -n "Inserta el exponente de la potencia: "
read exponente

if [ "$base" = "" -a "$exponente" = "" ] ; then
    echo "Tanto *base* como *exponente* no pueden estar vacios!!"
else
    echo -n "Resultado: " && echo "$base^$exponente" | bc
fi

#Script by: INovomiast