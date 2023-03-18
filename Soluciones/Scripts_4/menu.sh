#!/bin/bash

echo -n "Introduce A, B, C ó D: "
read var1

case $var1 in
    A|a) echo " Ha introducido A " ;;
    B|b) echo " Ha introducido B " ;;
    C|c) echo " Ha introducido C " ;;
    D|d) echo " Ha introducido D " ;;
    *) echo "Opción incorrecta " ;;

esac

#Script by: INovomiast