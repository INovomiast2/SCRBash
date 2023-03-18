#!/bin/bash

function suma () {
    c=$(expr $a + $b)
    return $c
}

a=5
b=10
suma $a $b
resultado=$?

echo $resultado

#Script by: INovomiast