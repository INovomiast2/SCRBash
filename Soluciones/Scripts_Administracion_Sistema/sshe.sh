#!/bin/bash

CONSOLA=false
repo="${HOME}/SCRBash/Soluciones/Scripts_Administracion_Sistema/connections.txt"
RUTA_LIB="${HOME}/SCRBash/Soluciones/"

function DEBUG()
{
    if ( $CONSOLA ) ; then
        echo "Debug: $1 \n"
    fi    
}

#-----------
GET_IP()
{
    busqueda="$1"
    #DEBUG "Buscando por: [ $busqueda ]"
    cat $repo | grep $busqueda | awk -F"|" '{print $2}'
}
#-----------

#-----------
GET_USER()
{
    busqueda="$1"
    #DEBUG "Buscando por: [ $busqueda ]"
    cat $repo | grep $busqueda | awk -F"|" '{print $3}'
}
#-----------

#-----------
GET_PASSWORD()
{
    busqueda="$1"
    #DEBUG "Buscando por: [ $busqueda ]"
    cat $repo | grep $busqueda | awk -F"|" '{print $4}'
}
#-----------

#-----------
GET_DIRECTORY()
{
    busqueda="$1"
    #DEBUG "Buscando por: [ $busqueda ]"
    cat $repo | grep $busqueda | awk -F"|" '{print $5}'
}
#-----------

CONECTAR_SSH()
{
    ${RUTA_LIB}connect.sh "$1" "$2" "$3" "$4" "$5"
}

SSH()
{
    alias="$1"
    _Host=`GET_IP "$alias"`
    _User=`GET_USER "$alias"`
    _Pass=`GET_PASSWORD "$alias"`
    _Dir=`GET_DIRECTORY "$alias"`
    _Prompt=">"
    CONECTAR_SSH "$_Host" "$_User" "$_Pass" "$_Dir" "$_Prompt"
}

ALIASNAME="$1"

if [ -z $ALIASNAME ]; then
    echo "Sintaxis: $0 <alias o nombre maquina>"
    echo ""
    echo "Conexiones Disponibles:"
    echo "-----------------------"
    echo ""
    tac $HOME/SCRBash/Soluciones/Scripts_Administracion_Sistema/conexiones.txt | grep -v "#" | awk -F"|" '{print $1}' | sort
else
    SSH "$1"
fi;
#Script by: INovomiast