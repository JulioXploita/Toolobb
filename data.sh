#!/bin/bash

# Define los códigos de escape ANSI para el color verde claro y el color de texto predeterminado
GREEN='\033[1;32m'
NC='\033[0m' # No Color

# Texto adicional en color verde claro
echo -e "${GREEN}##  ##   ##  ##       ##   ##  ##   ######   #####     ####${NC}"
echo -e "${GREEN}## ##    ##  ##      ###   ## ##    ##       ##  ##   ##  ##${NC}"
echo -e "${GREEN}####     ##  ##     ####   ####     ##       ##  ##   ##${NC}"
echo -e "${GREEN}###      ##  ##   ##  ##   ###      ####     #####     ####${NC}"
echo -e "${GREEN}####     ##  ##   #######  ####     ##       ####         ##${NC}"
echo -e "${GREEN}## ##    ##  ##       ##   ## ##    ##       ## ##    ##  ##${NC}"
echo -e "${GREEN}##  ##    ####        ##   ##  ##   ######   ##  ##    ####${NC}"

# Define los códigos de escape ANSI para el color rojo y el color de texto predeterminado
RED='\033[0;31m'
NC='\033[0m' # No Color

# Función para eliminar la carpeta en el directorio específico
eliminar_carpeta() {
    local carpeta="/storage/emulated/0/Android/data/com.dts.freefireth/cache"
    
    # Verifica si la carpeta existe
    if [ -d "$carpeta" ]; then
        # Elimina la carpeta y su contenido
        rm -rf "$carpeta"
        if [ $? -eq 0 ]; then
            echo "Carpeta $carpeta eliminada"
            echo -e "${RED}Aplicado${NC}"
        else
            echo "Error al eliminar la carpeta $carpeta"
        fi
    else
        echo "La carpeta $carpeta no existe."
    fi
}

# Muestra el mensaje "Inyect (1)" en color rojo
echo -e "${RED}Inyect (1)${NC}"

# Menú de selección
read opcion

if [ "$opcion" = "1" ]; then
    eliminar_carpeta
else
    echo "Opción no válida."
fi
