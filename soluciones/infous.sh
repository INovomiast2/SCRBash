#!/bin/bash

TEMPORAL=`grep "^$1:" /etc/passwd 2>/dev/null`
USUARIO=`echo TEMPORAL | cut -f1 -d:`

echo "Username: $USUARIO"
echo -n "Identificador (UID): "
echo $TEMPORAL | cut -f3 -d:  
echo -n "Nombre del grupo primario: "
GID=`echo $TEMPORAL | cut -f4 -d:`
grep ":$GID:" /etc/group | cut -f1 -d:
echo "Directorio Personal: "
ls -ld `echo $TEMPORAL | cut -f6 -d:`
