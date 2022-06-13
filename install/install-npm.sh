#!/bin/bash

echo "Copiando archivos base para Contenedor NPM"

[[ ! -d /opt/npm ]] && sudo mkdir /opt/npm
[[ -d /opt/npm ]] && echo "Directorio /opt/npm Creado"

[[ ! -L /opt/npm/docker-compose.yml ]] && sudo ln -s ~/git/compose/npm-compose.yml /opt/npm/docker-compose.yml
[[ -L /opt/npm/docker-compose.yml ]] && echo "Link a ~/git/compose/npm-compose.yml establecido"