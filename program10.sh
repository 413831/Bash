#!/bin/bash

INPUT="n"

while [ $INPUT != "y" -a $INPUT != "Y" ]; do

echo "////////////////////////////"
echo "***Super Calculadora B3000***"
echo "///////////////////////////"
echo ""
echo "Operaciones: "
echo "Suma (+)"
echo "Resta (-)"
echo "Multiplicacion (*)"
echo "Division (/)"
echo "Modulo (%)" 
echo ""

echo -n "Introduzca primer numero: "
read PRIMERNUMERO
echo -n "Introduzca simbolo de operacion: " 
read  OPERACION
echo -n "Introduzca segundo numero: "
read SEGUNDONUMERO
RESULTADO=0

if [ "${OPERACION}" == '-' ]; then
	echo "Resta ${PRIMERNUMERO} - ${SEGUNDONUMERO}"
	 RESULTADO=$((PRIMERNUMERO-SEGUNDONUMERO))
fi

if [ "${OPERACION}" == '+' ]; then
	echo "Suma ${PRIMERNUMERO} + ${SEGUNDONUMERO}"
         RESULTADO=$((PRIMERNUMERO+SEGUNDONUMERO)) 
fi 

 
if [ "${OPERACION}" == '*' ]; then
	echo "Multiplicacion ${PRIMERNUMERO} * ${SEGUNDONUMERO}"
         RESULTADO=$((PRIMERNUMERO*SEGUNDONUMERO))  
fi

if [ "${OPERACION}" == '/' ]; then
        if [ $SEGUNDONUMERO -ne 0 ]; then
        echo "Division ${PRIMERNUMERO} / ${SEGUNDONUMERO}"
         RESULTADO=$((PRIMERNUMERO/SEGUNDONUMERO)) 
        fi
fi 


if [ "${OPERACION}" == '%' ]; then
	if [ $SEGUNDONUMERO -ne 0 ]; then
	echo "Division ${PRIMERNUMERO} % ${SEGUNDONUMERO}"
         RESULTADO=$((PRIMERNUMERO%SEGUNDONUMERO)) 
	fi
fi 

echo "El resultado es: ${RESULTADO}" 
echo ""
echo "¿Desea salir? y/N"

read INPUT
clear

done
