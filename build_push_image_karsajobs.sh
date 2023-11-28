#!/usr/bin/env sh

# Membuat docker image karsajobs
docker build -t raihanndaffaa/karsajobs:latest .

# Mengubah nama image sesuai dengan format GitHub Packages
docker tag raihanndaffaa/karsajobs:latest ghcr.io/raihanndaffaa/karsajobs:latest

# Login ke GitHub Packages
cat githubpass.txt | docker login ghcr.io --username raihanndaffaa --password-stdin

# Upload image ke GitHub Packages
docker push ghcr.io/raihanndaffaa/karsajobs:latest