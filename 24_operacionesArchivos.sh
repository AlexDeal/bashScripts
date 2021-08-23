#!/bin/bash
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
