#!/bin/bash

source ./secrets/env.sh

killall cloudflared >/dev/null 2>&1

screen -dmS argo_gitea      cloudflared --hostname gitea.$CNAME      http://d1.home:3001
screen -dmS argo_grafana    cloudflared --hostname grafana.$CNAME    http://d1.home:3000
screen -dmS argo_motion     cloudflared --hostname motion.$CNAME     http://d1.home:8765
screen -dmS argo_plex       cloudflared --hostname plex.$CNAME       http://d1.home:32400
screen -dmS argo_portainer  cloudflared --hostname portainer.$CNAME  http://d1.home:9000
screen -dmS argo_rundeck    cloudflared --hostname rundeck.$CNAME    http://d1.home:4440

