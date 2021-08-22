# !/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parametros
# Autor: Alejandro Serrano

echo "Programa Opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviads: $*"
echo -e "\n"
echo "Recuperar valores"
#El [-n "$1"] quiere decir que iniciaremos en el valor 1 de nuestros parametros y la -n quiere decir
#mientras $1 no sea 0 haz
while [ -n "$1" ]; do
    #Esta es una sentencia switch
    case "$1" in
        -a) echo "-a option utilizada";;
        -b) echo "-b option utilizada";;
        -c) echo "-c option utilizada";;
        *) echo "$! no es una opcion";;
    esac
    #Final de la sentencia switch
    shift
    #Se usa el comando shift para iterar sobre los parametros
done #Fin del while
