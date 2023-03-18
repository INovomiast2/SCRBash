#!/bin/bash

for arg in "$*" ; do
    echo "Elemento: $arg"
done

for arg in "$@" ; do
    echo "Elemento: $arg"
done

#Script by: INovomiast