#!/bin/bash

#Pre-Config. Placeholder Values
host='servidorFTP'
user='usuario'
password='contraseña'
path=/
ftpfile=ftp.temp

#FTPScript - Gens a FTPScript to transfer the files.
function ftp_script_gen() {
    #Ver lista de ficheros que se recibe como parametro
    for i in $1; do
        echo item: $i
    done
    
    data=$1
    echo "Recibido: $data"
    echo "#!/bin/bash" > $ftpfile
    echo "ftp -n -iv $host <<EOF" >> $ftpfile
    echo "user $user $password" >> $ftpfile
    echo "binary" >> $ftpfile
    echo "hash" >> $ftpfile
    echo "cd $2" >> $ftpfile
    echo "mput \"$1\"" >> $ftpfile
    echo "bye" >> $ftpfile
    echo "EOF" >> $ftpfile
    return "0"
}

#---

#----------#
#PRINCIPAL #
#----------#

#Chequear Params
if [ "${1}" ] ; then
    continue=0
else
    echo ""
    echo "Mueve los archivos indicados a un Servidor FTP predeterminado (Variables Internas del Script)"
    echo "Sintaxis: $0 [fichero|Lista de ficheros] [Directorio_destino]"
    echo "Ejemplo: $0 \"*.mp3\" MUSICA"
    echo "(Si se usan ficheros con patrones recursivos * el párametro debe ir encerrado entre comillas simples. Ejemplo: \"cat *.txt\" )"
    echo ""
    echo "ERROR: No se ha especificado ningun parámetro. No se enviará por FTP ningun archivo."
    echo ""
    exit
fi

#Comprobar Ruta de Destino. Si no se indica ninguna, por defecto se usa "/"
if [ "x${2}" == "x" ] ; then
    path="/"
else
    path=$2
    continue=0
fi

#Transferencia FTP
ftp_script_gen "$1" "$path"

#Permiso de Ejecucion a FTPScript y ejecucion
chmod +x $ftpfile
resultado=./$ftpfile

#Mostrar datos de Transferencia
echo ""
echo "-- Respuesta FTP --"
echo $resultado
echo "-- Fin FTP --"
echo ""

#Borrado de Temporales Generados
rm $ftpfile

#Script by: INovomiast