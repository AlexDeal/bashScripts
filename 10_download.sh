11_ifElseifElse.sh                                                                                  0000744 0001750 0001750 00000000603 14110374063 012715  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
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
                                                                                                                             11_ifElse.sh                                                                                        0000744 0001750 0001750 00000000760 14110373175 011574  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else
# Alejandro Serrano

notaClase=0
edad=0

echo "Ejemplo Sentencia If-else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi
                12_ifAnidados.sh                                                                                    0000744 0001750 0001750 00000001070 14110554752 012424  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el uso de los ifs anidados
# Alejandro Serrano

notaClase=0
continua=""
echo "Ejemplo Sentencia If-else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel: (s/n)" continua
    if [ $continua == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte"
else
    echo "El alumno reprueba la materia"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                                        13_expresionesCondicionales.sh                                                                      0000744 0001750 0001750 00000001745 14110376657 015442  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
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
    echo "La persona es un ni??o o ni??a"
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

                           14_case.sh                                                                                          0000744 0001750 0001750 00000000576 14110377637 011317  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Alejandro Serrano

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opcion de la A-Z: " opcion

case $opcion in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    *) echo "Opcion incorrecta"
esac
                                                                                                                                  15_arreglos.sh                                                                                      0000744 0001750 0001750 00000002115 14110402133 012166  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el uso de arreglos
# Alejandro Serrano

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro,  Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

#Imprimir los tama??os de los arreglos
echo "Tama??o de numeros: ${#arregloNumeros[*]}"
echo "Tama??o de cadenas: ${#arregloCadenas[*]}"
echo "Tama??o de rangos: ${#arregloRangos[*]}"

#imprimir la posicion 3 del arreglo de numero, cadenas de rango
echo "Posicion 3 arreglo de numeros: ${arregloNumeros[3]}"
echo "Posicio 3 arreglo de cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 arreglo de rangos: ${arregloRangos[3]}"

#A??adir y eliminar valores en un arreglo
arregloNumeros[7]=20
echo "Arreglo de numeros en posicion 6: ${arregloNumeros[6]}"
echo "Arreglo de numeros en posicion 7: ${arregloNumeros[7]}"
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tama??o arreglo de numeros: ${#arregloNumeros[*]}"

                                                                                                                                                                                                                                                                                                                                                                                                                                                   16_forLoop.sh                                                                                       0000744 0001750 0001750 00000001145 14110403625 012002  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                           17_whileLoop.sh                                                                                     0000744 0001750 0001750 00000000303 14110404521 012314  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el uso de iteracion while
# Alejandro Serrano

numero=1
while [ $numero -ne 10 ]; do
    echo "Imprimendo $numero veces"
    numero=$(( numero + 1 ))
done

                                                                                                                                                                                                                                                                                                                             18_loopsAnidados.sh                                                                                 0000744 0001750 0001750 00000000567 14110405762 013176  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
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
                                                                                                                                         19_breakContinue.sh                                                                                 0000744 0001750 0001750 00000000601 14110407057 013155  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el uso de break y continue
# Alejandro Serrano
echo "sentencias break y continue"
for file in $(ls); do
    for nombre in {1..4}; do
        if [ $file = "10_download.sh" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue;
        else
            echo "Nombre archivo: $file _ $nombre"
        fi
    done
done
                                                                                                                               1_utilityPostgres.sh                                                                                0000755 0001750 0001750 00000000207 14110330722 013523  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postgres
echo "Hola bienvenido al curso de programacion bash"
                                                                                                                                                                                                                                                                                                                                                                                         20_menuOpciones.sh                                                                                  0000744 0001750 0001750 00000002037 14110410372 013017  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 21_crearArchivosDirectorios.sh                                                                      0000744 0001750 0001750 00000000545 14110554044 015365  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar la creacion de archivos y directorios
# Alejandro Serrano
echo "Archivos - Directorios"

if [[ $1 = "d" ]]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [[ $1 = "f" ]]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "Opcion invalida"
fi
                                                                                                                                                           22_escribirArchivos.sh                                                                              0000744 0001750 0001750 00000000340 14110555117 013660  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar la creacion de archivos y directorios
# Alejandro Serrano
echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adicion multilinea
cat << EOM >> $1
$2
EOM

                                                                                                                                                                                                                                                                                                23_readFile.sh                                                                                      0000744 0001750 0001750 00000000663 14110556656 012114  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
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

                                                                             24_operacionesArchivos.sh                                                                           0000744 0001750 0001750 00000000672 14110560607 014377  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar las operaciones de un archivo
# Alejandro Serrano
echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts
ls -la backupScripts

echo -e "\nMover el directorio baskcupScript a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm $HOME/backupScripts/*.txt
                                                                      25_tar.sh                                                                                           0000744 0001750 0001750 00000000271 14110561330 011145  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el empaquetamiento con el comando tar
# Alejandro Serrano
echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh

                                                                                                                                                                                                                                                                                                                                       26_gzip.sh                                                                                          0000744 0001750 0001750 00000000540 14110561654 011341  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el empaquetamiento con el comando tar y gzip
# Alejandro Serrano
echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar


echo "Empaquetar un solo archivo, con ratio 9"
gzip -9 9_options.sh
                                                                                                                                                                27_pbzip2.sh                                                                                        0000744 0001750 0001750 00000000460 14110562225 011573  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
# Programa para ejemplicar el empaquetamiento con el comando pbzip
# Alejandro Serrano
echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio, con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                                2_variables_2.sh                                                                                    0000744 0001750 0001750 00000000257 14110342220 012462  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
#Programa para revisar la declaracion de variables

opcion=0

echo "Opcion: $opcion y Nombre: $nombrel"

echo "Opcion nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                 2_variables.sh                                                                                      0000744 0001750 0001750 00000000446 14110334126 012247  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
#Programa para revisar la declaracion de variables

opcion=0
nombre=Marco

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que este disponible a los demas procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                          3_tipoOperadores.sh                                                                                 0000744 0001750 0001750 00000001643 14110337055 013303  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Alejandro Serrano


numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numero: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A - B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residui A % B = " $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Numero: A=$numA y B=$numB"
echo "A > B = " $((numA > numB))
echo "A > B = " $((numA > numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))



echo -e "\nOperadores de Asignacion"
echo "Numero: A=$numA y B=$numB"
echo "Sumar A += B " $((numA += numB))
echo "Restar A -=B " $((numA -= numB))
echo "Multiplicar A *= B " $((numA *= numB))
echo "Dividir A /= B " $((numA /= numB))
echo "Residuo A %= B " $((numA %= numB))


                                                                                             4_argumentos.sh                                                                                     0000744 0001750 0001750 00000000407 14110337634 012471  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"
                                                                                                                                                                                                                                                         5_substitucionComand.sh                                                                             0000744 0001750 0001750 00000000624 14110341325 014154  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion
# Autor: Alejandro Serrano

ubicacionActual=`pwd`
infoKernel=$(uname -a)
ubicacionActual2=$(pwd)
echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "La ubicacion actual es la siguiente: $ubicacionActual2"
echo "Informacion del kernel: $infoKernel"

                                                                                                            6_readEcho.sh                                                                                       0000744 0001750 0001750 00000000571 14110343506 012016  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar como capturar la informacion utilizando el comando echo, read y $REPLY
# Autor: Alejandro Serrano

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresa una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"

                                                                                                                                       7_read.sh                                                                                           0000744 0001750 0001750 00000000522 14110343771 011220  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar como capturar la informacion utilizando el comando read
# Autor: Alejandro Serrano

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresa una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"

                                                                                                                                                                              8_readValidate.sh                                                                                   0000744 0001750 0001750 00000001341 14110364771 012676  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Alejandro Serrano

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de informacion de solo un caracter
# El comando -n nos permite que el programa no continue si no se ingresa el numero de caracteres deseado
read -n1 -p "Ingresa una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
# -s de silence para que no se muestre en consola lo que se escribe
read -s -p "Clave: " clave
echo "Clave: $clave"
#cabe recalcar que cuando validemos informacion de esta manera, no podremos borrar
                                                                                                                                                                                                                                                                                               regularExpression.sh                                                                                0000744 0001750 0001750 00000001767 14110345222 013605  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # ! /bin/bash
# Programa para ejemplificar como capturar la informaci??n del usuario y validarla utilizando expresiones regulares
# Autor: Alejandro Serrano

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion:" identificacion
read -p "Ingresar las iniciales de un pa??s [EC, COL, US]:" pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento

#Validaci??n Identificaci??n
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificaci??n $identificacion v??lida"
else
    echo "Identificaci??n $identificacion inv??lida"
fi

#Validaci??n Pa??s
if [[ $pais =~ $paisRegex ]]; then
    echo "Pa??s $pais v??lido"
else
    echo "Pa??s $pais inv??lido"
fi

#Validaci??n Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento v??lida"
else
    echo "Fecha Nacimiento $fechaNacimiento inv??lida"
fi

         reto2.sh                                                                                            0000744 0001750 0001750 00000001002 14110371643 011103  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              reto4.sh                                                                                            0000744 0001750 0001750 00000003546 14110414011 011107  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   #!/bin/bash
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
    echo " * Men?? Principal * "
    echo "--------------------"
    echo "1)Proceso Actuales "
    echo "2)Memoria Disponible "
    echo "3)Espacio en disco "
    echo "4)Informacion Red"
    echo "5)Variables de entorno configuradas "
    echo "6)Informaci??n Programa "
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
                                                                                                                                                          utilityHost.sh                                                                                      0000744 0001750 0001750 00000000216 14110342505 012412  0                                                                                                    ustar   alex                            alex                                                                                                                                                                                                                   # !/bin/bash
# Programa que imprime el valor de dos variables

option=$1
result=$2

echo "El resultado de los valores son: $option y $result"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  