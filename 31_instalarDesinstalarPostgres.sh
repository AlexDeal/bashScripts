#!/bin/bash
# Programa que permite manejar las utilizades de Postgres
# Alejandro Serrano

opcion=0

# Funcion para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar instalacion de postgres"
    verifyInstall=$(which psql)
    if [ $? = 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingrese contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPost
        echo "$password" | sudo pacman -Syy
        echo "$password" | suydo pacman -S postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPost}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

# Funcion para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingrese contraseña de sudo: " password
    echo -e "\n"
    echo "$passowrd" | sudo -S systemctl stop postgresql.service
    echo "$passowrd" | sudo pacman -S -y --purge remove postgresql\*
    echo "$passowrd" | sudo -S rm -r /etc/postgresql
    echo "$passowrd" | sudo -S rm -r /etc/postgresql-common
    echo "$passowrd" | sudo -S rm -r /var/lib/postgresql
    echo "$passowrd" | sudo -S userdel -r postgres
    echo "$passowrd" | sudo -S groupdel postgresql
}

# Funcion para sacar un respaldo
sacar_respaldo () {
    echo "Haciendo respaldo.."
    echo "Directorio Backup: $1"
}

# Funcion para restaurar respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


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
        1)  instalar_postgres
            sleep 3;;
        2)  desinstalar_postgres
            sleep 3;;
        3)  read -p "Directorio de Backup: " directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3;;
        4)  read -p "Directorio Backup " directorioRespaldo
            restaurar_respaldo $directorioRespaldo
            sleep 3;;
        5) echo "Adios"
            exit 0;;
        *) echo "Opcion no reconocida"
    esac
done
