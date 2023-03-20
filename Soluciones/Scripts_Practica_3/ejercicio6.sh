#!/bin/bash

if [ $1 -gt $2 ] ; then
    echo "Suma: $(($1+$2))"
else
    echo "Resta: $(($1-$2))"
fi

#Script by: INovomiast