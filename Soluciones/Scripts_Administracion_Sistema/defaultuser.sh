#!/bin/bash

echo -n "Introduce el nombre de usuario: "
read username

useradd "$username"