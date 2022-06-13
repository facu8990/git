#!/bin/bash

echo "Creando directorio /opt/npm..."
sudo mkdir /opt/npm

echo "Creando link ~/git/compose/npm-compose.yml /opt/npm/docker-compose.yml..."
ln -s ../compose/npm-compose.yml /opt/npm/docker-compose.yml