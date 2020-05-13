#!/bin/bash

echo -n "Introduzca su nombre : "
read NOMBRE

if [ "$NOMBRE" == "Pepito" ]; then
 echo "Su nombre es : El Pepito"
 echo "Llego el Pepito , guarda"
else
 echo "Su nombre es : " $NOMBRE
 echo "Quien te conoce?"
fi
