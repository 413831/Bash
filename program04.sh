#!/bin/bash

echo "FOR con numeros ascendentes"
for ASCENDENTES in {1..5}; do
 echo "- Valor: " $ASCENDENTES
done
echo "-------------------"
echo "FOR con numeros descendentes"
for DESCENDENTES in {5..1}; do
 echo "- Valor: " $DESCENDENTES
done
