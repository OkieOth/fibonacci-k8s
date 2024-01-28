#!/bin/bash

scriptPos=${0%/*}

${scriptPos}/mvnw spring-boot:build-image -Pnative