#!/bin/bash

for fichero in $* ; do
  if [ -f $fichero ]; then
    echo "El fichero: " $fichero " existe!"
  else
    echo "ERROR, el fichero:" $fichero "no existe!!"
  fi
done

# Script by: INovomiast