#!/bin/bash

echo "Copiando archivos base para Contenedor DuckDNS"

[[ ! -d /opt/duckdns ]] && sudo mkdir /opt/duckdns
[[ -d /opt/duckdns ]] && echo "Directorio /opt/duckdns Creado"

[[ ! -d /opt/duckdns/config ]] && sudo mkdir /opt/duckdns/config
[[ -d /opt/duckdns/config ]] && echo "Directorio /opt/duckdns/config Creado"

[[ ! -L /opt/duckdns/docker-compose.yml ]] && sudo ln -s ~/git/compose/npm-compose.yml /opt/duckdns/docker-compose.yml
[[ -L /opt/duckdns/docker-compose.yml ]] && echo "Link a ~/git/compose/duckdns-compose.yml establecido"