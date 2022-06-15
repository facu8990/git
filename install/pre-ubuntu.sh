#!/bin/bash

echo "Descargando información de los paquetes de las fuentes configuradas:"
sudo apt update

echo "Actualizar paquetes post-instalación:"
sudo apt -y upgrade

echo "Instalar aplicaciones sudeste base:"
sudo apt -y install tree docker cockpit nfs-common cockpit-machines cockpit-pcp xserver-xorg-video-qxl

[[ ! -d ~/pre ]] && mkdir ~/pre
[[ -d ~/pre ]] && echo "Directorio ~/pre Creado"


# para habilitar libvirtd.service 
# 'user = "root"' >> /etc/libvirt/qemu.conf

