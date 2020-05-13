#!/bin/bash

echo "///////////////////"
echo "Buscador de archivos"
echo "///////////////////"
echo -n "Introduzca el nombre del archivo: "
read NOMBRE

for ARCHIVOS in /etc/$NOMBRE*; do
 echo ""
 echo "-----------------------------------------"
 echo "-Nombre del archivo:" $ARCHIVOS
 echo "-Contenido del archivo: " 
 cat $ARCHIVOS
 echo "-----------------------------------------"
done
