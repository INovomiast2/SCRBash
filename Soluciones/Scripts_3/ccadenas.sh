#!/bin/bash

cadena1 = ""
cadena2 = ""

[ "$cadena1" = "$cadena2" ] && echo "$cadena1 = $cadena2"
[ "$cadena1" != "$cadena2" ] && echo "$cadena1 != $cadena2"
[ -n "$cadena1" ] && echo "El tamaño de $cadena1 no es 0"
[ "$cadena2" ] && echo "El tamaño de $cadena2 no es 0"
[ -z "$cadena1" ] && echo "El tamaño de $cadena1 es 0"
[ "$cadena1" > "$cadena2" ] && echo "$cadena2 precede alfabéticamente a $cadena1"

#Script by: INovomiast
