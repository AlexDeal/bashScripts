#!/bin/bash
# Programa para ejemplicar como se lee en un archivo
# Alejandro Serrano
echo "Leer e un archivo"

cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=$(cat $1)
echo "$valorCat"

# Se utiliza la variable especial IFS (Internal Field Separatos) para evitar que los espacios en blanco se recorten
echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea; do
    echo "$linea"
done < $1

