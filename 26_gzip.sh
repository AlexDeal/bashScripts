#!/bin/bash
# Programa para ejemplicar el empaquetamiento con el comando tar y gzip
# Alejandro Serrano
echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar


echo "Empaquetar un solo archivo, con ratio 9"
gzip -9 9_options.sh
