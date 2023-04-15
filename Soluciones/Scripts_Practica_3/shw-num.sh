#!/bin/bash

echo -n "Introduce el primer numero: "
read num1
echo -n "Introduce el segundo numero: "
read num2

if [ $num1 -gt $num2 ]; then
    mayor=$num1
else
    mayor=$num2
fi

for ((i=0; i<$mayor; i++)); do
    echo -n "*"
done

# Script by: INovomiast