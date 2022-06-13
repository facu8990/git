#!/bin/bash

echo "Copiando archivos base para Contenedor Nextcloud y OpenOffice"

[[ ! -d /opt/nextcloud ]] && sudo mkdir /opt/nextcloud
[[ -d /opt/nextcloud ]] && echo "Directorio /opt/nextcloud Creado"

[[ ! -d /opt/nextcloud/db ]] && sudo mkdir /opt/nextcloud/db
[[ -d /opt/nextcloud/db ]] && echo "Directorio /opt/nextcloud/db Creado"

[[ ! -d /opt/nextcloud/config ]] && sudo mkdir /opt/nextcloud/config
[[ -d /opt/nextcloud/config ]] && echo "Directorio /opt/nextcloud/config Creado"

[[ ! -d /storage/nextcloud/data ]] && sudo mkdir -p /storage/nextcloud/data
[[ -d /storage/nextcloud/data ]] && echo "Directorio /storage/nextcloud/data Creado"

[[ ! -d /opt/nextcloud/onlyoffice/data ]] && sudo mkdir -p /opt/nextcloud/onlyoffice/data
[[ -d /opt/nextcloud/onlyoffice/data ]] && echo "Directorio /opt/nextcloud/onlyoffice/data Creado"

[[ ! -d /opt/nextcloud/onlyoffice/logs ]] && sudo mkdir -p /opt/nextcloud/onlyoffice/logs
[[ -d /opt/nextcloud/onlyoffice/logs ]] && echo "Directorio /opt/nextcloud/onlyoffice/logs Creado"

[[ ! -L /opt/nextcloud/docker-compose.yml ]] && sudo ln -s ~/git/compose/nextcloud-compose.yml /opt/nextcloud/docker-compose.yml
[[ -L /opt/nextcloud/docker-compose.yml ]] && echo "Link a ~/git/compose/nextcloud-compose.yml establecido"
