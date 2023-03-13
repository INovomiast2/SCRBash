#!/bin/bash

#Decimal: defecto
let "dec = 32"
echo "Número Decimal = $dec"

#Octal
let "oct = 032"
echo "Número Octal = $oct"

#Hexadecimal
let "hex = 0x32"
echo "Número Hexadecimal = $hex"

let "bin = 2#111100111001101"
echo "Número Binario = $bin"

let "b32 = 32#77"
echo "Número Base32 = $b32"

let "b64 = 64#@_"
echo "Número Base63 = $b64"
