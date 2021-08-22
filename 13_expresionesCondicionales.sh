# !/bin/bash
# Programa para ejemplificar el uso de expersiones condicionales
# Alejandro Serrano

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais == "Colombia" ]; then
    echo "La persona es de Sudamerica"
else
    echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathArchivo ]; then #-d sirve para verificar si existen direcciones
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

