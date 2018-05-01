#!/bin/bash

: ${DC_CNAME?Need to set DC_CNAME}
: ${DC_NFS_SERVER?Need to set DC_NFS_SERVER}

docker-compose \
  -f stacks/elasticsearch.yml \
  -f stacks/gitea.yml \
  -f stacks/grafana.yml \
  -f stacks/graylog.yml \
  -f stacks/influxdb.yml \
  -f stacks/logspout.yml \
  -f stacks/mongodb.yml \
  -f stacks/mosquitto.yml \
  -f stacks/motion.yml \
  -f stacks/mysql.yml \
  -f stacks/plex.yml \
  -f stacks/redis.yml \
  -f stacks/rundeck.yml \
  -f stacks/traefik.yml \
  -f stacks/unifi.yml \
  config \
  > docker-compose.yml


