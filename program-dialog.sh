#!/bin/bash

mostrar()
{
 dialog --title "Ingreso de datos" --inputbox "Nombre: " 0 0 2>/tmp/nombre.tmp.$$
}

main()
{
 cat /tmp/nombre.tmp.$$
 echo ""
}

mostrar
main

