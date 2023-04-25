#!/bin/bash

datos="nombre,apellidos,sexo,direccion"
oldIFS=$IFS
IFS=','

for item in $datos ; do
    echo "Item: $item"
done     

#Script by: INovomiast