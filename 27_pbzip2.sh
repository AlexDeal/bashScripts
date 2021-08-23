#!/bin/bash
# Programa para ejemplicar el empaquetamiento con el comando pbzip
# Alejandro Serrano
echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio, con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
