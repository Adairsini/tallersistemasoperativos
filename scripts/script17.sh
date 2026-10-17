#!/bin/bash

# Uso de una libreria

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/libreria.sh"

saludar "Jorge Adair Contreras Ferman"

resultado=$(sumar 10 20)
echo "La suma es: $resultado"
