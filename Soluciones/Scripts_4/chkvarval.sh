#!/bin/bash

echo -n "Introduce un valor: "
read var

if (( var < 10 ))
then
    echo "El valor es menor que 10"
else
    echo "El valor es mayor que 10"
fi

#Script by: INovomiast