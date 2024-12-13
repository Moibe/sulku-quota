#!/bin/bash

# Nombre del archivo
archivo="chips/sulku-quota/quota.txt"

# Leer el número actual del archivo
numero_actual=$(cat "$archivo")

# Sumar 12 al número actual
nuevo_numero=$((numero_actual + 1))

# Verificar si el nuevo número es mayor a 300 y ajustarlo si es necesario
if [ "$nuevo_numero" -gt 300 ]; then
  nuevo_numero=300
fi

echo "$numero_actual  --> $nuevo_numero"

# Sobreescribir el archivo con el nuevo número
echo "$nuevo_numero" > "$archivo"
