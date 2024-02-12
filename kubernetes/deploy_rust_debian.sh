#!/bin/bash

scriptPos=${0%/*}

kubectl apply $scriptPos/rust_debian_1.yaml