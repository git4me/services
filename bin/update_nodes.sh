#!/bin/bash

docker node update d1 --label-add nfs=true
docker node update d1 --label-add server=true

docker node update d2 --label-add nfs=true
docker node update d2 --label-add server=true

