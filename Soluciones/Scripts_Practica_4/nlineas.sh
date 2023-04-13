#!/bin/bash

if [ $# -eq 2 ]; then
    if [ -f $1 -a -r $1 ]; then
        head $2 $1 2> /dev/null
    else
        echo "No es posible acceder a: " $1
        exit 1
    fi
fi

# Script by: INovomiast