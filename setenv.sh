#!/bin/bash

stack_name="${PWD##*/}"

alias stackup="docker stack deploy -c ./docker-compose.yml ${stack_name}"
alias stackdown="docker stack rm ${stack_name}"
