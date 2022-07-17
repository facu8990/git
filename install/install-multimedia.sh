#!/bin/bash

echo "Copiando archivos base para Contenedor multimedia"

[[ ! -d /opt/multimedia ]] && sudo mkdir /opt/multimedia
[[ -d /opt/multimedia ]] && echo "Directorio /opt/multimedia Creado"

[[ ! -d /storage/multimedia ]] && sudo mkdir /storage/multimedia
[[ -d /storage/multimedia ]] && echo "Directorio /storage/multimedia Creado"

[[ ! -d /storage/multimedia/tvseries ]] && sudo mkdir /storage/multimedia/tvseries
[[ -d /storage/multimedia/tvseries ]] && echo "Directorio /storage/multimedia/tvseries Creado"

[[ ! -d /storage/multimedia/movies ]] && sudo mkdir /storage/multimedia/movies
[[ -d /storage/multimedia/movies ]] && echo "Directorio /storage/multimedia/movies Creado"

[[ ! -d /storage/multimedia/music ]] && sudo mkdir /storage/multimedia/music
[[ -d /storage/multimedia/music ]] && echo "Directorio /storage/multimedia/music Creado"

[[ ! -d /storage/multimedia/downloads ]] && sudo mkdir /storage/multimedia/downloads
[[ -d /storage/multimedia/downloads ]] && echo "Directorio /storage/multimedia/downloads Creado"

[[ ! -d /opt/multimedia/config-plex ]] && sudo mkdir /opt/multimedia/config-plex
[[ -d /opt/multimedia/config-plex ]] && echo "Directorio /opt/multimedia/config-plex Creado"

[[ ! -d /opt/multimedia/config-radarr ]] && sudo mkdir /opt/multimedia/config-radarr
[[ -d /opt/multimedia/config-radarr ]] && echo "Directorio /opt/multimedia/config-radarr Creado"

[[ ! -L /opt/multimedia/docker-compose.yml ]] && sudo ln -s ~/git/compose/multimedia-compose.yml /opt/multimedia/docker-compose.yml
[[ -L /opt/multimedia/docker-compose.yml ]] && echo "Link a ~/git/compose/multimedia-compose.yml establecido"

sudo chown sudeste:sudeste -R /opt/multimedia
sudo chown sudeste:sudeste -R /storage/multimedia
