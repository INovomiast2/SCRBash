#!/bin/bash

echo -n "Introduce la Palabra 1: "
read palabra1

echo -n "Introduce la Palabra 2: "
read palabra2

echo -n "Introduce la Palabra 3: "
read palabra3

if [ "$palabra1" = "$palabra2" -a "$palabra2" = "$palabra3" ] ; then
    echo "Las 3 palabras coinciden!"
    elif [ "$palabra1" = "$palabra2" ] ; then
        echo "Las palabras 1 y 2 coinciden!"
        elif [ "$palabra1" = "$palabra3" ] ; then
            echo "Las palabras 1 y 3 coinciden!"
            elif [ "$palabra2" = "$palabra3" ] ; then
                echo "Las palabras 2 y 3 coinciden!"
            else
                echo "Todas las palabras son diferentes!"
fi

#Script by: INovomiast