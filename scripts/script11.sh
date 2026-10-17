#!/bin/bash

# Comprobar si un fichero existe
# Se recibe el nombre como argumento

if [ -e "$1" ] && [ -f "$1" ]; then
    echo "OK, el fichero existe"
else
    echo "NO existe o no es un fichero comun"
fi

if [ ! -e "$1" ]; then
    echo "No existe"
fi
