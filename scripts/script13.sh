#!/bin/bash

# Estructura while

echo "WHILE en marcha"

cont=0

while [ "$cont" -lt 10 ]
do
    echo "Valor del contador: $cont"
    cont=$((cont + 1))
done

echo "Valor final del contador: $cont"
