#!/bin/bash

echo "Copiando archivos base para Contenedor Emulator"

[[ ! -d /opt/emulator ]] && sudo mkdir /opt/emulator
[[ -d /opt/emulator ]] && echo "Directorio /opt/emulator Creado"

[[ ! -d /storage/emulator ]] && sudo mkdir /storage/emulator
[[ -d /storage/emulator ]] && echo "Directorio /storage/emulator Creado"

[[ ! -L /opt/emulator/docker-compose.yml ]] && sudo ln -s ~/git/compose/emulator-compose.yml /opt/emulator/docker-compose.yml
[[ -L /opt/emulator/docker-compose.yml ]] && echo "Link a ~/git/compose/emulator-compose.yml establecido"

sudo chown sudeste:sudeste -R /opt/emulator
sudo chown sudeste:sudeste -R /storage/emulator
