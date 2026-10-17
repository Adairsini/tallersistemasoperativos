
#!/bin/bash

echo "===== MENU PRINCIPAL ====="

select opcion in "Crear arbol de directorios" "Hola mundo" "Saludo usando variables" "Salir"
do
    case "$REPLY" in
        1)
            bash "./Tarea 993/arbol.sh"
            ;;
        2)
            bash "./Tarea 993/hola_mundo.sh"
            ;;
        3)
            bash "./Tarea 993/saludo_variables.sh"
            ;;
        4)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opcion no valida. Intenta de nuevo."
            ;;
    esac
done
