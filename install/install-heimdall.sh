#!/bin/bash

echo "Copiando archivos base para Contenedor Heimdall"

[[ ! -d /opt/heimdall ]] && sudo mkdir /opt/heimdall
[[ -d /opt/heimdall ]] && echo "Directorio /opt/heimdall Creado"

[[ ! -L /opt/heimdall/docker-compose.yml ]] && sudo ln -s ~/git/compose/heimdall-compose.yml /opt/heimdall/docker-compose.yml
[[ -L /opt/heimdall/docker-compose.yml ]] && echo "Link a ~/git/compose/heimdall-compose.yml establecido"