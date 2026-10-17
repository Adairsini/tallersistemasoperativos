#!/bin/bash

# Estructura select

echo "Select de distros"

DISTROS="Debian Ubuntu Navarrux Gentoo Mandriva"

select resultado in $DISTROS
do
    if [ -n "$resultado" ]; then
        break
    fi

    echo "Selecciona una opcion valida"
done

echo "Sistema seleccionado: [$resultado]"
echo "Longitud de cadena: ${#resultado}"
