#!/bin/bash

docker-compose down

docker volume rm grafana-volume
docker volume rm influxdb-volume
docker volume rm kapacitor-volume
docker volume rm chronograf-volume
