#!/bin/bash

# melakukan build dari Dockerfile
docker build -t item-app:v1 .

# mengecek list docker image
docker images

# push docker image ke docker hub
cat dockerpass.txt | docker login --username raihanndaffaa --password-stdin
docker tag item-app:v1 raihanndaffaa/item-app:v1
docker push raihanndaffaa/item-app:v1