#!/bin/bash

echo -n ""
read palabra1

echo -n ""
read palabra2

echo -n ""
read palabra3

echo "Palabras: $palabra1 | $palabra2 | $palabra3"
echo "Invertidas: "
echo "$palabra1" | rev
echo "$palabra2" | rev
echo "$palabra3" | rev

#Script by: INovomiast
