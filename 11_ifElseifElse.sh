# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else if, else
# Alejandro Serrano

edad=0

echo "Ejemplo Sentencia If-else"
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
