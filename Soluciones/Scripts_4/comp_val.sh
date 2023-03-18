#!/bin/bash

echo -n "Introduce una cadena: "
read cadena1

echo -n "Introduce una segunda cadena:"
read cadena2

if test "$cadena1" = "$cadena2"
then
    echo "Coinciden!"
fi

#Script by: INovomiast