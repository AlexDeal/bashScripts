# !/bin/bash
# Programa que recibe informacion como nombre, apellido, direccion y numero telefonico y los imprime posteriormente
# Alejandro Serrano

nombre=""
apellido=""
edad=0
direccion=""
numeroTelefono=0

read -p "Nombre: " nombre
read -p "Apellidos: " apellido
read -p "Edad: " edad
read -p "Direccion: " direccion
read -p "Numero de telefono: " numeroTelefono

echo "El nombre es: $nombre"
echo "El apellido es: $apellido"
echo "La direccion es: $direccion"
echo "El numero de telefono es: $numeroTelefono"
