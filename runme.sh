#!/bin/bash

CURRENT_LOCATION=$(pwd)


if [[ ! $(docker -v) ]]; then
    echo "No Docker installed!"
    exit 1
fi

if [[ ! $(docker volume ls -q | grep grafana-volume) ]]; then
    docker volume create grafana-volume
fi

if [[ ! $(docker volume ls -q | grep influxdb-volume) ]]; then
    docker volume create influxdb-volume
fi

if [[ ! $(docker volume ls -q | grep kapacitor-volume) ]]; then
    docker volume create kapacitor-volume
fi

if [[ ! $(docker volume ls -q | grep chronograf-volume) ]]; then
    docker volume create chronograf-volume
fi



docker-compose up -d