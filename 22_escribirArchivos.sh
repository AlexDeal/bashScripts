#!/bin/bash
# Programa para ejemplicar la creacion de archivos y directorios
# Alejandro Serrano
echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adicion multilinea
cat << EOM >> $1
$2
EOM

