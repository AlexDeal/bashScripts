#!/bin/bash
# Programa que permite manejar las utilizades de Postgres
# Alejandro Serrano

opcion=0

while : ;do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "               Menu Principal            "
    echo "1.- Instalar Postgres"
    echo "2.- Desinstalar Postgres"
    echo "3.- Sacar un respaldo"
    echo "4.- Restaurar respaldo"
    echo "5.- Salir"

    #Leer los datos del usuario - capturar informacion
    read -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1) echo "Instalar postgress...."
            sleep 3;;
        2) echo "Desinstalar postgres..."
            sleep 3;;
        3) echo "Sacar respaldo..."
            sleep 3;;
        4) echo "Restaurar respaldo..."
            sleep 3;;
        5) echo "Adios"
            exit 0;;
        *) echo "Opcion no reconocida"
    esac
done
