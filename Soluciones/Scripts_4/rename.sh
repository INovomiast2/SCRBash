#!/bin/bash

contador=1

for img in *.png *.jpg ; do
    nuevo=imagen-$contador.${img##*.}
    mv "$img" "$nuevo" 2>/dev/null
    
    if [  ] ; then
        echo "Renombrando $img a $nuevo"
        let contador++
    fi
done

#Script by: INovomiast