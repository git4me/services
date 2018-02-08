#!/bin/bash

base_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

STACK_NAME="homeops"

alias stackup="docker stack deploy -c ${base_dir}/docker-compose.yml ${STACK_NAME}"
alias stackdown="docker stack rm ${STACK_NAME}"
