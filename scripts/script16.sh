#!/bin/bash

# Funciones

RESULTADO=0

muestrapantalla() {
    echo "Valores: $0> $1 y $2 y $3"
}

sumame() {
    echo "Estamos en la funcion: ${FUNCNAME}"
    echo "Parametros: $1 y $2"
    RESULTADO=$(expr "$1" + "$2")
    return 0
}

muestrapantalla 3 4 "epa"

if sumame 45 67; then
    echo "OK"
else
    echo "Ocurrio un error"
fi

echo "Resultado: $RESULTADO"
