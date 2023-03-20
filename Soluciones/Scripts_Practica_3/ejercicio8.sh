#!/bin/bash

for num in $(seq 0 100) ; do
    sleep 0.2
    [ $((num % 2)) -eq 0 ] && echo $num
done

#Script by: INovomiast