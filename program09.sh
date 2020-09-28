#!/bin/bash
echo "//////////////////////////"
echo "PROGRAMA BUSCADOR DE ARCHIVO"
echo "//////////////////////////"

echo -n "Introduzca el archivo a verificar: "
read NOMBREARCHIVO

if [ -a $NOMBREARCHIVO ]; then
	echo "El archivo existe"
else
	echo "El archivo NO existe"
fi


