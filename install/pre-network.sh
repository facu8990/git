#!/bin/bash

echo "Descargando información de los paquetes de las fuentes configuradas:"
sudo apt update

echo "Actualizar paquetes post-instalación:"
sudo apt -y upgrade

echo "Instalar aplicaciones sudeste base:"
sudo apt -y install network-manager
sudo systemctl enable NetworkManager.service

echo "Por favor, reiniciar el equipo"