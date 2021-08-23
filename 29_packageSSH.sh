#!/bin/bash
# Programa para ejemplicar la forma de como transferir por la red utilizando el comando rsync utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Alejandro Serrano

echo "Empaquetar todos los scripts de la carpeta ShellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""
read -p "Ingrese el host: " host
read -p "Ingrese el usuario " usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla segun los datos ingresados"

rsync -avz $(pwd) $usuario@$host:/c/Users/aleja/Downloads
