#!/bin/bash

echo "///////INSTALACION DRIVER TP-LINK-WN725N///////"
echo "----------------------------------------------"
echo "Los comandos deben ejecutarse con privilegios de administrador"

echo "-> Compilando archivos necesarios para la instalacion"
sudo make all
echo ""
echo "-> Archivos compilados"

echo "-> Creacion de paquete de instalacion"
sudo make install
echo ""
echo "-> Paquete de instalacion listo"

echo "-> Configurando kernel del SO"
sudo modprobe -r 8188eu
echo ""
echo "-> Configuracion finalizada"

echo "-> Instalando driver en kernel"
sudo modprobe 8188eu
echo ""
echo "-> Instalacion finalizada"

echo "------------------------"
echo "Deberá ver las luces del dispositivo funcionando de no ser así"
echo "Reinicié el equipo para que el sistema configure los cambios"
echo "-----------------------" 


