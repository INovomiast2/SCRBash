#!/bin/bash

echo -n "Introduce una palabra: "
read palabra1

echo -n "Introduce otra palabra: "
read palabra2

echo -n "Y otra más: "
read palabra3

echo "Palabras: $palabra1 | $palabra2 | $palabra3"
echo "Invertidas: "
echo "$palabra1" | rev
echo "$palabra2" | rev
echo "$palabra3" | rev

#Script by: INovomiast
