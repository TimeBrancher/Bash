#!/bin/bash
if [[ $# != 1 ]]; then
	echo "Error: el script requiere un argumento"
	echo "Uso: $0 <Carpeta>"
	exit 1
fi

if [ -d "$1" ]; then
	Nombre="Backup_$(date +%F_%H-%M-%S)"
	cp -r "$1" "$Nombre"
	echo "Se hizo un respaldo de $1 a $Nombre en $date" >> backup.log
else
	echo "Error al leer el archivo"
	exit 1
fi
