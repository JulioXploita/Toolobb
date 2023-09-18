#!/bin/bash

# Define los códigos de escape ANSI para el color rojo y el color de texto predeterminado
RED='\033[0;31m'
NC='\033[0m' # No Color

# Función para eliminar archivos en el directorio específico
eliminar_archivos() {
    local directorio="/storage/emulated/0/Android/data/com.dts.freefireth"
    
    # Verifica si el directorio existe
    if [ -d "$directorio" ]; then
        # Elimina los archivos en el directorio
        rm -f "$directorio"/*
        if [ $? -eq 0 ]; then
            echo "Archivos eliminados en $directorio"
            echo -e "${RED}Aplicado${NC}"
        else
            echo "Error al eliminar archivos en $directorio"
        fi
    else
        echo "El directorio $directorio no existe."
    fi
}

# Muestra el mensaje "Presiona 1 y luego Enter para eliminar archivos en /storage/emulated/0/Android/data/com.dts.freefireth" en color rojo
echo -e "${RED}Inyect (1)${NC}"

# Menú de selección
read opcion

if [ "$opcion" = "1" ]; then
    eliminar_archivos
else
    echo "Opción no válida."
fi
