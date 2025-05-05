#!/bin/bash

if [[ $# != 1 ]]; then
	echo "Faltaron inputs"
	echo "Forma de usar $0 <nombre del proceso>"
	exit 1
fi

ps aux | grep "$1" | awk '{print $2 "\t" $3 "\t" $4 "\t" $11}' > reporte_proceso.txt
echo "Reporte del proceso guardado en reporte_proceso.txt"
cat reporte_proceso.txt
