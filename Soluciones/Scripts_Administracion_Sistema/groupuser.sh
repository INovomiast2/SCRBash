#!/bin/bash

echo -n "Introduce el Nombre de Usuario a crear: "
read username

echo -n "Introduce el Nombre del Grupo: "
read groupname

#Little extra!
if [ "$username" = "" ] ; then
    echo "El Nombre de usuario no puede estar vacio!"
    elif [ "$username" = "" -a "$groupname" = "" ] ; then
        echo "El nombre de usuario y grupo no pueden estar vacios!"
        elif [ "$groupname" = "" ] ; then
            echo "El grupo no puede estar vacio!"
else
    useradd -g "$groupname" "$username"
fi

#Script by: INovomiast