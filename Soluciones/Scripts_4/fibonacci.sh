#!/bin/bash

function fibonacci {
    a=0
    b=1
    c=0
    
    while [[ $i -lt "$1" ]] ; do
        printf "%d\n" $a
        let sum=$a+$b
        let a=$b
        let b=$sum
        let i=$i+1
    done
}

echo -n "Longitud: "
read longitud

fibonacci $longitud

#Script by: INovomiast