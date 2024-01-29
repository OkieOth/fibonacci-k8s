#!/bin/bash

scriptPos=${0%/*}

COMPOSE_FILE=$scriptPos/../compose_env.yaml

function create() {
  echo "Starting fresh kind cluster ..."
  kind create cluster --name fibo-kind --config $scriptPos/cluster_conf.yaml
}

function delete() {
  echo "Delete kind cluster"
  kind delete cluster --name fibo-kind
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
