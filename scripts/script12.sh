#!/bin/bash

# Uso de la iteracion for

echo "FOR simple:"
for i in a b c d e f g h i
do
    echo "letra: $i"
done

NOMBRES="Iñigo Sten Asier Pello Roberto"

echo "Participantes:"
for i in $NOMBRES
do
    echo "$i"
done

echo "FOR con ficheros:"
for i in *.sh
do
    if [ -f "$i" ]; then
        ls -lh "$i"
    fi
done

echo "FOR clasico:"
for (( cont=0; cont<10; cont++ ))
do
    echo "Ahora valgo: $cont"
done
