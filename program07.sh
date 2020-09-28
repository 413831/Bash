#!/bin/bash

echo -n "Ingrese archivo para leer: "
read ARCHIVO

while read LINEA; do
 USUARIO=`echo $LINEA | cut -d ':' -f1` 	 
 DESCRIPCION=`echo $LINEA | cut -d ':' -f5`
 echo -n "- Nombre del usuario : "${USUARIO}
 echo " || Descripcion del usuario : "${DESCRIPCION}
done < $ARCHIVO
