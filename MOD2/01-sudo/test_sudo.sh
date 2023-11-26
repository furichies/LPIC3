#!/bin/bash

# Verificar si se está ejecutando con sudo
if [ "$EUID" -ne 0 ]; then
    echo "Este script debe ejecutarse con sudo."
    exit 1
fi

# Obtener el nombre de usuario actual
current_user=$(who am i| cut -d" " -f1)

# Mostrar el nombre de usuario
echo "El script fue ejecutado por el usuario: $current_user"
