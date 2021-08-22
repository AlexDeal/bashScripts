# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Alejandro Serrano

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de informacion de solo un caracter
# El comando -n nos permite que el programa no continue si no se ingresa el numero de caracteres deseado
read -n1 -p "Ingresa una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
# -s de silence para que no se muestre en consola lo que se escribe
read -s -p "Clave: " clave
echo "Clave: $clave"
#cabe recalcar que cuando validemos informacion de esta manera, no podremos borrar
