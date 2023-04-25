#==================================================#
#                                                  #
# Script Manager v.1.0                             #
#                                                  #
# Developed by: INovomiast                         #
#                                                  #
#==================================================#

#!/bin/bash

#Colors
RED="\e[31m"
GREEN="\e[32m"
BROWN="\e[33m"
BLUE="\e[34m"
PURPLE="\e[35m"
CYAN="\e[36m"
BLACK="\e[30m"

LIGHT_RED="\e[1;31m"

END="\e[0m"

function script_start() 
{
    echo "START SCRIPT"
}

function script_help() 
{
  bash docs/help.sh
}

function script_doctor() 
{
  bash analitycs/doctor.sh
}


#Check if params is not 0!
if [ $# -lt 1 ]; then
    echo -e "$RED [ERROR] $END NO SE HA PASADO PARAMETROS!!"

else
    OPTION=$1

    case $OPTION in
        "--start") script_start ;;
        "--help") script_help ;;
        "--doctor") script_doctor ;;
     esac
fi

# Script by: INovomiast