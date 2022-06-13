#!/bin/bash

echo "Copiando archivos base para Contenedor NPM"

echo "Creando directorio /opt/npm..."
[[ ! -d /opt/npm ]] && sudo mkdir /opt/npm
[[ -d /opt/npm ]] && echo "Directorio Creado"

echo "Creando link ~/git/compose/npm-compose.yml /opt/npm/docker-compose.yml..."
[[ ! -L /opt/npm/docker-compose.yml ]] && sudo ln -s ../compose/npm-compose.yml /opt/npm/docker-compose.yml
[[ -L /opt/npm/docker-compose.yml ]] && echo "Link a Compose establecido"