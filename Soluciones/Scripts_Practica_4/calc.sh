#!/bin/bash

function suma() {
    echo "La Suma es: " $(($1 + $2))
}

function resta() {
    echo "La Resta es: " $(($1 - $2))
}

function multiplicacion() {
    echo "La Multiplicacion es: " $(($1 * $2))
}

function division() {
    echo "La Division es: " $(($1 / $2))
}

OPCION=1

while [ $OPCION -ne 0 ]; do
    clear
    echo "Calculator.sh"
    echo "1. Sumar"
    echo "2. Restar"
    echo "3. Multiplicar"
    echo "4. Dividir"
    echo "0. Salir"
    echo
    echo -n "Elige una Opcion: "
    read OPCION

    if [ $OPCION -ge 0 -a $OPCION -le 4 ]; then
        echo -n "Introduce el primer número de la operación: "
        read NUM1
        echo -n "Introduce el segundo número de la operación: "
        read NUM2

        case $OPCION in
            "1") suma $NUM1 $NUM2 && sleep 1 ;;
            "2") resta $NUM1 $NUM2 && sleep 1 ;;
            "3") multiplicacion $NUM1 $NUM2 && sleep 1 ;;
            "4") division $NUM1 $NUM2 && sleep 1 ;;
        esac
    else
        echo "La Opcion Elegida es Incorrecta!!"
    fi
done

# Script by: INovomiast