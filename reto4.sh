#!/bin/bash
# Programa que contiene un menu con las siguientes opciones
# 1.-Procesos actuales
# 2.-Memoria Disponible
# 3.-Espacio en disco
# 4.-Informacion de red
# 5.-Variables de entorno configuradas
# 6.-Informacion Programa
# 7.-Backup informacion
# 8.-Salir

opcion=0

while : ;do
    #Limpiamos la pantalla
    clear
    #Imprimimos el menu
    echo " * Menú Principal * "
    echo "--------------------"
    echo "1)Proceso Actuales "
    echo "2)Memoria Disponible "
    echo "3)Espacio en disco "
    echo "4)Informacion Red"
    echo "5)Variables de entorno configuradas "
    echo "6)Información Programa "
    echo "7)Backup de informacion"
    echo "8)Salir "
    #leemos la opcion
    read -p "Ingrese una opcion [1-8]: " opcion
    case $opcion in
        1)  echo "---------------------------"
            echo "Los procesos actuales son: "
            echo "$(ps -u)"
            sleep 5;;
        2) echo "--------------------------"
           echo "La memoria disponible es: "
           echo "$(free -h)"
           sleep 5;;
        3) echo "--------------------------"
           echo "El espacio disponible es: "
           echo "$(df -h)"
           sleep 5;;
       4) echo"---------------------------"
          echo "La informacion de red es: "
          echo "$(ifconfig)"
          sleep 5;;
       5) echo "-------------------------------------------"
          echo "Las variables de entorno configuradas son: "
          echo "$(printenv)"
          sleep 5;;
       6) echo "--------------------------------"
          echo "La informacion del programa es: "
          echo "El programa es un menu"
          sleep 5;;
       7) echo "---------------"
          echo "Haciendo Backup"
          sleep 5;;
       8) echo "-----"
          echo "Salir"
          exit 0;;
       *) echo "------------------"
          echo "Opcion no admitida"
    esac
done
