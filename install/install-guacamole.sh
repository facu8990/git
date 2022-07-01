#!/bin/bash

echo "Copiando archivos base para Contenedor Guacamole"

[[ ! -d /opt/guacamole ]] && sudo mkdir /opt/guacamole
[[ -d /opt/guacamole ]] && echo "Directorio /opt/guacamole Creado"

[[ ! -L /opt/guacamole/docker-compose.yml ]] && sudo ln -s ~/git/compose/guacamole-compose.yml /opt/guacamole/docker-compose.yml
[[ -L /opt/guacamole/docker-compose.yml ]] && echo "Link a ~/git/compose/guacamole-compose.yml establecido"