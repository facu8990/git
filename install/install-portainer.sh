#!/bin/bash

echo "Copiando archivos base para Contenedor Portainer"

[[ ! -d /opt/portainer ]] && sudo mkdir /opt/portainer
[[ -d /opt/portainer ]] && echo "Directorio /opt/portainer Creado"

[[ ! -L /opt/portainer/docker-compose.yml ]] && sudo ln -s ~/git/compose/portainer-compose.yml /opt/portainer/docker-compose.yml
[[ -L /opt/portainer/docker-compose.yml ]] && echo "Link a ~/git/compose/portainer-compose.yml establecido"