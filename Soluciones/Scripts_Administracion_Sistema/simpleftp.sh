#!/bin/bash

#Connection Params
HOST='servidor.com'
USER='usuario'
PASSWD='password'

#Transferencia
ftp -i -n $HOST <<EOF
    user ${USER} ${PASSWD}
    binary
    cd /home/"$USER"/temporal
    put fichero1
    get license.txt
    quit
EOF

#Script by: INovomiast