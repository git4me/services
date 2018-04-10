#!/bin/bash

killall cloudflared >/dev/null 2>&1
echo $CNAME

cloudflared --hostname gitea.$CNAME      http://d1.home:3001  >/dev/null 2>&1 &
cloudflared --hostname grafana.$CNAME    http://d1.home:3000  >/dev/null 2>&1 &
cloudflared --hostname motion.$CNAME     http://d1.home:8765  >/dev/null 2>&1 &
cloudflared --hostname plex.$CNAME       http://d1.home:32400 >/dev/null 2>&1 &
cloudflared --hostname portainer.$CNAME  http://d1.home:9000  >/dev/null 2>&1 &
cloudflared --hostname rundeck.$CNAME    http://d1.home:4440  >/dev/null 2>&1 &

