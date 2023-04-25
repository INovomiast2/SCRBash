#!/bin/bash

declare -a NUMEROS
NUMEROS=( cero uno dos tres )
echo ${NUMEROS[2]}
NUMEROS[4]="cuatro"
echo ${NUMEROS[4]}
NUMEROS=( [6]=seis siete [9]=nueve )
echo ${NUMEROS[7]}
echo ${NUMEROS[*]}

#Script by: INovomiat
