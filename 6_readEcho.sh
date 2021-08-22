# !/bin/bash
# Programa para ejemplificar como capturar la informacion utilizando el comando echo, read y $REPLY
# Autor: Alejandro Serrano

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresa una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"

