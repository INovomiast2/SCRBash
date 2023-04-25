#!/bin/bash

if [ $UID -ne 0 ]
then
    echo "Debe ejecutar el script como *root*"
    exit 1
fi
echo "Programa ejecutado en modo *root*"

#Script by: INovomiast