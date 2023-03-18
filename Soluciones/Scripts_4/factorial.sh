#!/bin/bash

echo -n "Factorial de: "
read factorial
res=1

echo "Calculando el factorial de $factorial!"

while [ $factorial -gt 1 ] ; do
    let res=$res*$factorial
    let factorial-=1
done

echo "Resultado=$res"

#Script by: INovomiast