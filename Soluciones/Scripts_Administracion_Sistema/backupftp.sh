#!/bin/bash

# Para usar con cron debe existir el fichero $AUTHFILE
# y contener la siguiente información. 
# 
# host servidorFTP
# user usuario
# pass contraseña
#

#Config Params
FTP="/usr/bin/ncftpput"
CMD=""
AUTHFILE="/root/.ftpconfig"
servidor="servidor"
remoteDir=/
localDir=.

if [ -f $AUTHFILE ] ; then
    #Usar AUTHFILE para autenticación
    CMD="$FTP -m -R -f $AUTHFILE $servidor $remoteDir $localDir"
else
    echo ""
    read -p "Introduzca el nombre del Servidor FTP: " servidor
    read -p "Introduzca el nombre de Usuario: " usuario
    read -s -p "Introduzca la contraseña: " password
    echo ""
    read -p "Introduzca el directorio remoto [/] : " localDir
    [ "$remoteDir" == "" ] && localDir="/" || :
    [ "$localDir" == "" ] && localDir="." || :
    CMD="$FTP -m -R -u $usuario -p $password $servidor $remoteDir $localDir"
fi

$CMD

#Script by: INovomiast