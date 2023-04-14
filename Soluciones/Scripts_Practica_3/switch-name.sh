#!/bin/bash

if [ $# -ne 2 ]; then
    exit 1
fi

mv $1 temporal tmp
mv $2 $1
mv temporal.tmp $2

# Script by: INovomiast