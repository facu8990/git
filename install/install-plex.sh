#!/bin/bash

echo "Copiando archivos base para Contenedor Plex"

[[ ! -d /opt/plex ]] && sudo mkdir /opt/plex
[[ -d /opt/plex ]] && echo "Directorio /opt/plex Creado"

[[ ! -d /opt/plex/config ]] && sudo mkdir /opt/plex/config
[[ -d /opt/plex/config ]] && echo "Directorio /opt/plex/config Creado"

[[ ! -L /opt/plex/docker-compose.yml ]] && sudo ln -s ~/git/compose/plex-compose.yml /opt/plex/docker-compose.yml
[[ -L /opt/plex/docker-compose.yml ]] && echo "Link a ~/git/compose/plex-compose.yml establecido"