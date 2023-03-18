#!/bin/bash

for ((i=0; i<10; i++)) ; do
    if [ $i -le 3 ] ; then
        echo "Continue"
        continue
    fi
    
    echo $i
    
    if [ $i -ge 8 ] ; then
        echo "Break"
        break
    fi
done

#Script by: INovomiast