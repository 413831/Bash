#!/bin/bash

echo "////////////////////////////"
echo "***Programa de practica***"
echo "///////////////////////////"

echo -n "Introduzca primer numero: "
read PRIMERNUMERO
echo -n "Introduzca simbolo operacion: " 
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
