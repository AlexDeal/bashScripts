# !/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion
# Autor: Alejandro Serrano

ubicacionActual=`pwd`
infoKernel=$(uname -a)
ubicacionActual2=$(pwd)
echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "La ubicacion actual es la siguiente: $ubicacionActual2"
echo "Informacion del kernel: $infoKernel"

