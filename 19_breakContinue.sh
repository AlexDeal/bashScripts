#!/bin/bash
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
