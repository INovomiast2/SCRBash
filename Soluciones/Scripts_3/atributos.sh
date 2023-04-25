#!/bin/bash

ATRIBUTOS_SCRIPT=`/bin/ls -l $0` # Aquí indicamos el directorio donde se localiza el Script

echo "El Usuario: '$USER' ha ejecutado el Script $0, en el ordenador '$HOSTNAME'. " # Imprimimos en pantalla la siguiente cadena de texto dinamico.
echo '\n' # Separación para un texto más bonito.
echo "Los Atributos del Script son: " # Imprimimos otra cadena de texto.
echo $ATRIBUTOS_SCRIPT # Por ultimo imprimimos la variable $ATRIBUTOS_SCRIPT.

#Script by: INovomiast
