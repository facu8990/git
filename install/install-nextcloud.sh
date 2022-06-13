#!/bin/bash

echo "Copiando archivos base para Contenedor Nextcloud y OpenOffice"

echo "Creando directorio /opt/nextcloud..."
[[ ! -d /opt/nextcloud ]] && sudo mkdir /opt/nextcloud
[[ -d /opt/nextcloud ]] && echo "Directorio Creado"

echo "Creando link ~/git/compose/nextcloud-compose.yml /opt/nextcloud/docker-compose.yml..."
[[ ! -L /opt/nextcloud/docker-compose.yml ]] && sudo ln -s ../compose/npm-compose.yml /opt/nextcloud/docker-compose.yml
[[ -L /opt/nextcloud/docker-compose.yml ]] && echo "Link a Compose establecido"