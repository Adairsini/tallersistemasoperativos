#!/bin/bash

# El bucle until

echo "Estructura until"

cont=15

until [ "$cont" -lt 0 ]
do
    cont=$((cont - 1))
    echo "Valor del contador: $cont"
done

echo "Valor final del contador: $cont"
