#!/bin/bash

echo -n "Introduce el nombre de usuario a crear: "
read username

echo -n "Introduce la fecha de caducidad de la cuenta [Formato: 20001201]: "
read expire

useradd -m -d /home/"$username" -e "$expire" "$username"

#Script by: INovomiast