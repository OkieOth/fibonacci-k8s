#!/bin/bash

scriptPos=${0%/*}

COMPOSE_FILE=$scriptPos/../compose_env.yaml

function create() {
  echo "Starting fresh kind cluster ..."
  k3d cluster create k3d.fibo --agents 1
}

function delete() {
  echo "Delete kind cluster"
  k3d cluster delete k3d.fibo
}


case "$1" in
  create)
    create
    ;;
  delete)
    delete
    ;;
  *)
    echo "Usage: $0 {create|delete}"
    exit 1
    ;;
esac

exit 0
