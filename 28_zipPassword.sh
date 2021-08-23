#!/bin/bash
# Programa para ejemplicar el empaquetamiento con clave utilizando zip
# Alejandro Serrano

echo "Empaquetar todos los scripts de la carpeta ShellCourse con zip y asignarle una clave de seguridad"
zip -e shellCourse.zip *.sh
