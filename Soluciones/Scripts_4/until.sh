#!/bin/bash

secreta=gonzalo
palabra=desconocida

echo "Adivine la palabra secreta"
echo

until [ "$palabra" = "$secreta" ] ; do
    echo -n "Palabra: "
    read palabra
done

#Script by: INovomiast