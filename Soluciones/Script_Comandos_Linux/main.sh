#!/bin/bash

if [ -e "./output" ]; then
    echo "Restableciendo archivos!"
    sleep 1
    echo
    echo "Borrando el Directorio: ./output/ [Borrado Recursivo Activado!]"
    rm -r output/
    sleep 2
    echo 
    echo "¿Que desea hacer?"
    echo "===================="
    echo " 1. Reiniciar Script"
    echo " 0. Salir"
    echo "===================="
    echo -n "Elige una opcion: "
    read OPTION
    case $OPTION in
        "1") echo "Opcion:" $OPCION "ha sido elegida..." && sleep 2 && ./main.sh ;;
        "0") echo "Opcion:" $OPCION "ha sido elegida..." && echo "Saliendo del Script..." && sleep 1 && exit 0 ;;
    esac
else
    clear
    echo "=================================="
    echo "      Script_Comandos_Linux       "
    echo "                                  "
    echo "                                  "
    echo " Ejecuta comandos automaticamente "
    echo "                                  "
    echo "=================================="
    echo
    sleep 1
    mkdir output
    echo "Ejecutando: Este es mi fichero!"
    sleep 1
    echo "Este es mi fichero" > ./output/MiFichero.txt
    sleep 2
    echo
    echo "Ejecutando: .personal.doc"
    echo
    sleep 1
    echo "Creando Archvio: personal.doc"
    touch ./output/personal.doc
    sleep 1
    echo "Ocultando Archivo: personal.doc"
    mv ./output/personal.doc ./output/.personal.doc
    sleep 1
    echo
    echo "Ejecutando: .bash_profile show"
    echo
    sleep 1
    cat .bash_profile
    sleep 3
    echo
    echo "Ejecutando: dir_misImagenes"
    echo
    sleep 1
    mkdir ./output/misImagenes
    echo "misImagenes ha sido generado con exito!"
    sleep 2
    echo
    echo "Ejecutando: showDesktop"
    echo
    sleep 1
    echo "Mostrando Desktop:"
    ls -l /Desktop
    sleep 3
    echo
    echo "Ejecutando: chmod +r"
    echo
    sleep 1
    chmod +r ./output/misImagenes
    echo
    sleep 1
    echo "Ejecutando: man less"
    echo
    sleep 1
    man less
    echo
    sleep 2
    echo "Ejecutando: foto.jpg"
    echo
    touch ./output/foto.jpg
    sleep 1
    echo "Creado Archivo: foto.jpg"
    echo ""
    sleep 2
    echo "Ejecutando: Copiar foto.jpg a misImagenes/"
    sleep 1
    cp ./output/foto.jpg ./output/misImagenes/
    echo
    sleep 2
    echo "Ejecutando: Borrado Recursivo de: ./misImagenes"
    echo
    sleep 2
    rm -r ./output/misImagenes/
    sleep 1
    echo "Borrado recursivo ejecutado con exito!"
    echo 
    sleep 2
    echo "Ejecutando: Vaya Examen"
    echo "Vaya Examen" >> ./output/saludo
    sleep 2
    echo
    echo "./output/saludo fue creado exitosamente!"
    sleep 1
    echo
    echo "Ejecutando: Crear directorio: ./output/examen1"
    sleep 2
    cp Desktop/* ./output/examen1/
    sleep 1
    echo
    echo "Ejecutando: Mover ./output/examen1 : /home/"
    sleep 1
    mv ./output/examen1/* /home/
    echo "./output/examen1/ movido exitosamente a /home/"
    sleep 2
    echo
    echo "Creando fecha..."
    sleep 2
    echo
    Date > ./output/fecha
    sleep 1
    echo "Fichero: ./output/fecha generado exitosamente!"
    cat ./output/fecha
    echo
    sleep 3
    echo "Ejecutando: Renombrado de Fecha"
    sleep 1
    mv ./output/fecha ./output/fechita
    echo 
    sleep 2
    echo "Creando fichero: febrero"
    cat 1 2023 > ./output/febrero
    echo
    sleep 2
    echo "Modificando permisos de: ./output/febrero"
    echo
    chmod u=rw, go=r tiempo
    sleep 3
    echo "Permisos Modificados: u=rw, go=r tiempo"
    echo
    sleep 2
    echo "Ejecutando: FicheroDelRoot"
    echo
    find / -user root > ./output/FicheroDelRoot
    echo
    echo "Todos los archivos generados y los comando ejecutados!!"
    sleep 4
    echo
    echo "Mostrando: ./output/*"
    echo
    ls -l ./output/
    sleep 5
    echo 
    echo "Todos los archivos generados por main.sh se situan en: ./output/"
    echo
    sleep 2
    echo "Saliendo de main.sh..."
    sleep 3
    exit 1
fi

# Script by: INovomiast