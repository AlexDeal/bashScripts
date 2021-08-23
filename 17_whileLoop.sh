#!/bin/bash
# Programa para ejemplicar el uso de iteracion while
# Alejandro Serrano

numero=1
while [ $numero -ne 10 ]; do
    echo "Imprimendo $numero veces"
    numero=$(( numero + 1 ))
done

