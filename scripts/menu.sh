
#!/bin/bash

# TAREA 986 - MENU PRINCIPAL

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

while true
do
    clear

    echo "======================================"
    echo "         TAREA 986 - MENU"
    echo "======================================"
    echo ""
    echo "  01. Hola mundo"
    echo "  02. Variables"
    echo "  03. Argumentos y variables"
    echo "  04. Arrays"
    echo "  05. Valores por defecto"
    echo "  06. Comprobar archivos"
    echo "  07. Estructura case"
    echo "  08. Operaciones aritmeticas"
    echo "  09. Operaciones logicas"
    echo "  10. Condicionales"
    echo "  11. Comprobar archivos (argumentos)"
    echo "  12. Ciclo for"
    echo "  13. Ciclo while"
    echo "  14. Ciclo until"
    echo "  15. Estructura select"
    echo "  16. Funciones"
    echo "  17. Uso de librerias"
    echo "  18. Colores ANSI"
    echo ""
    echo "  00. Salir"
    echo "======================================"

    read -r -p "Selecciona una opcion: " opcion

    if [[ "$opcion" == "0" || "$opcion" == "00" ]]; then
        echo "Gracias por utilizar el menu de la Tarea 986."
        break
    fi

    if [[ ! "$opcion" =~ ^[0-9]+$ ]] || (( 10#$opcion < 1 || 10#$opcion > 18 )); then
        echo "Opcion no valida."
        read -r -p "Presiona ENTER para continuar..."
        continue
    fi

    numero=$(printf "%02d" "$((10#$opcion))")
    archivo="$SCRIPT_DIR/script${numero}.sh"

    if [[ ! -f "$archivo" ]]; then
        echo "No se encontro el script $numero."
    else
        echo ""
        echo "Ejecutando ejercicio $numero..."
        echo "--------------------------------------"

        case "$numero" in
            03)
                read -r -p "Introduce un argumento: " argumento
                bash "$archivo" "$argumento"
                ;;
            06|11)
                read -r -p "Introduce la ruta de un archivo: " archivo_usuario
                bash "$archivo" "$archivo_usuario"
                ;;
            *)
                bash "$archivo"
                ;;
        esac
    fi

    echo ""
    read -r -p "Presiona ENTER para regresar al menu..."
done
