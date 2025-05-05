#!/bin/bash
if [ $# != 1 ]; then
	echo "Modo de uso: $0 <directorio>"
	exit 1
fi
if [ ! -d "$1" ]; then
	echo "$1 no es un directorio"
	exit 1
fi

find "$1" -perm -o+w -exec ls -l{} \; >  permission_report.txt
echo "Auditoria completa, revisa en permission_report.txt"
