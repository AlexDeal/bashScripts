#!/bin/bash
# Programa para ejemplicar el uso de arreglos
# Alejandro Serrano

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro,  Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño de numeros: ${#arregloNumeros[*]}"
echo "Tamaño de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño de rangos: ${#arregloRangos[*]}"

#imprimir la posicion 3 del arreglo de numero, cadenas de rango
echo "Posicion 3 arreglo de numeros: ${arregloNumeros[3]}"
echo "Posicio 3 arreglo de cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 arreglo de rangos: ${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
echo "Arreglo de numeros en posicion 6: ${arregloNumeros[6]}"
echo "Arreglo de numeros en posicion 7: ${arregloNumeros[7]}"
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"

