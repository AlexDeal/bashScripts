# !/bin/bash
# Programa para ejemplificar como capturar la informacion utilizando el comando read
# Autor: Alejandro Serrano

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresa una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"

