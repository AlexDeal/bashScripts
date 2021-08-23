#!/bin/bash
# Programa para ejemplicar el uso de los loops anidados
# Alejandro Serrano

#echo "Loops anidados"
#for file in $(ls); do
#    for nombre in {1..4}; do
#        echo "Nombre del archivo: $file _ $nombre"
#    done
#done

for file in $(ls *.sh); do
    echo "----------- $file ----------"
    while read -r linea; do
        echo "$linea"
    done < "$file"
done
