#!/bin/bash

path=$PATH

while [ $path ] ; do
    echo ${path%%:*}
    if [ ${path#*:} = $path ] ; then
        path=
    else
        path=${path#*:}
    fi
done

#Script by: INovomiast