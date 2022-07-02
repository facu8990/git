#!/bin/bash

echo "Copiando archivos base para Contenedor Deluge"

[[ ! -d /opt/deluge ]] && sudo mkdir /opt/deluge
[[ -d /opt/deluge ]] && echo "Directorio /opt/deluge Creado"

[[ ! -L /opt/deluge/docker-compose.yml ]] && sudo ln -s ~/git/compose/deluge-compose.yml /opt/deluge/docker-compose.yml
[[ -L /opt/deluge/docker-compose.yml ]] && echo "Link a ~/git/compose/deluge-compose.yml establecido"