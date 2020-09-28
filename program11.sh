#!/bin/bash

ayuda()
{
 echo $0
 echo ""
 echo "- Parametros:"
 echo ""
 echo "val1: Valor1."
 echo "val2: Valor2."
 echo ""
}

 if [ $# -eq 2 ]; then
  echo "OK"
 else
  ayuda
 fi



