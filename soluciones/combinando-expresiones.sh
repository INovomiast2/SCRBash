#!/bin/bash

palabra1 = "Hola"
palabra2 = "Adios"
palabra3 = "Hola"

[ "$palabra1" = "$palabra2" -a "$palabra2" = "$palabra3" ] && echo "Las 3 palabras coinciden."
[ "$palabra1" = "$palabra2" -o "$palabra2" = "$palabra3" ] && echo "Algunas palabras coinciden."
!([ "$palabra1" = "$palabra2" ]) && echo "Las palabras 1 y 2 son diferentes."

#Script by:INovomiast
