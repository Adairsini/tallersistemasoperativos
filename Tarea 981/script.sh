
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: ./script.sh archivo"
    exit 1
fi

archivo="$1"

if [ ! -e "$archivo" ]; then
    echo "Error: el archivo no existe."
    exit 1
fi

nombre=$(basename "$archivo")
tipo=$(stat -c "%F" "$archivo")
usuario=$(stat -c "%U" "$archivo")
grupo=$(stat -c "%G" "$archivo")
tamano=$(stat -c "%s" "$archivo")
permisos=$(stat -c "%A" "$archivo")
enlaces=$(stat -c "%h" "$archivo")
ruta=$(realpath "$archivo")
fecha=$(stat -c "%y" "$archivo")
creacion=$(stat -c "%w" "$archivo")

echo "================================"
echo " INFORMACION DEL ARCHIVO"
echo "================================"

echo "Nombre: $nombre"
echo "Tipo: $tipo"
echo "Usuario: $usuario"
echo "Grupo: $grupo"
echo "Ruta absoluta: $ruta"
echo "Tamaño en bytes: $tamano bytes"
echo "Enlaces: $enlaces"
echo "Fecha de modificacion: $(date -d "$fecha" "+%d de %B de %Y")"

if [ "$creacion" != "-" ]; then
    echo "Fecha de creacion: $(date -d "$creacion" "+%d de %B de %Y")"
else
    echo "Fecha de creacion: No disponible"
fi

explicar_permisos() {
    local nombre="$1"
    local p="$2"
    local resultado=""

    [[ "$p" == *r* ]] && resultado+="Lectura, "
    [[ "$p" == *w* ]] && resultado+="Escritura, "
    [[ "$p" == *x* ]] && resultado+="Ejecucion, "

    if [ -z "$resultado" ]; then
        resultado="Sin permisos"
    else
        resultado="${resultado%, }"
    fi

    echo "    $nombre: $resultado"
}

echo ""
echo "Permisos:"

explicar_permisos "User($usuario)" "${permisos:1:3}"
explicar_permisos "Group($grupo)" "${permisos:4:3}"
explicar_permisos "Others" "${permisos:7:3}"

echo "================================"
