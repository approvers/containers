#!/bin/bash

cd /containers

for DIRECTORY in $(find . -maxdepth 1 -type d); do
  cd $DIRECTORY
  echo $DIRECTORY
  cat .env
done
