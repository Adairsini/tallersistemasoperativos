#!/bin/bash

# Operaciones logicas
# && significa AND
# || significa OR
# ! significa NOT

booleano=true

$booleano && echo "OK" || echo "no es true"

otrobool=false

if [ "$otrobool" = false ]; then
    echo "Ahora es falso"
fi

valor=6

if [ "$valor" -le 6 ]; then
    echo "Se cumple"
fi

nuevo=$valor

if [ "$nuevo" -eq "$valor" ]; then
    echo "Son lo mismo"
fi

echo "Ahora $nuevo es lo mismo que $valor"
