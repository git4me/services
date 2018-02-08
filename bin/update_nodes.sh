#!/bin/bash

docker node update d1 --label-add nfs=true
docker node update d1 --label-add private=false
docker node update d1 --label-add server=true

docker node update d2 --label-add nfs=true
docker node update d2 --label-add private=false
docker node update d2 --label-add server=true

docker node update d3 --label-add nfs=true
docker node update d3 --label-add private=true # D3 is VPN'd at router
docker node update d3 --label-add server=true