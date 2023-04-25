#!/bin/bash

    function copy()
    {
        echo -e "[\e[1;32mINICIANDO\e[0m]"
        sleep 1
        echo -e "[\e[1;33mCOMPROBANDO QUE LOS DIRECTORIOS SEAN EXISTENTES!\e[0m]"
        sleep 2

        cp $2 $3
        
    }

    function help()
    {
        more ./extras/copiar_help.txt
        exit 0
    }

    if [ $# -eq 0 ]; then
        echo -e "\e[1;31m [ERROR]: \e[0mNO SE HAN PASADO PARAMETROS!!"
    else
        OPTION=$1

        case $OPTION in
            "-h") help ;;
            "-c") copy ;;
        esac 
    fi

# Script by: INovomiast