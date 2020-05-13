#!/bin/bash

echo "//////////////////////////"
echo "Crear usuarios con listado"
echo "//////////////////////////"
echo -n "Ingrese el nombre del listado para generar usuarios: "
read LISTADO

while read LINEA; do
 BASH=`echo ${LINEA} | cut -d '|' -f3` 
 USUARIO=`echo ${LINEA} | cut -d '|' -f1`
 DESCRIPCION=`echo ${LINEA} | cut -d '|' -f2`
 echo "${USUARIO}-${DESCRIPCION}-${BASH}"
 useradd -s "${BASH}" -c "${DESCRIPCION}" $USUARIO
done < ./$LISTADO
