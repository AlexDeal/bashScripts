#!/bin/bash
# Programa para ejemplicar el uso de iteracion for
# Alejandro Serrano

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de Numeros"
for num in ${arregloNumeros[*]}; do
    echo "Numero: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Perdo" "Luis" "Daniela"; do
    echo "Nombres: $nom"
done

echo "Iterar en Archivos"
for file in *; do
    echo "Nombre Archivo: $file"
done


echo "Iterar utilizando un comando"
for file in $(ls); do
    echo "Nombre archivo: $file"
done

echo "Iterar usando un formato tradicional"
for ((i=1; i<10; i++)); do
    echo "Numero: $i"
done

