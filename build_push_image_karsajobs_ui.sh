#!/usr/bin/env sh

# Membuat docker image dengan nama <username-docker>/karsajobs-ui dan tag latest
docker build -t raihanndaffaa/karsajobs-ui:latest .

# Mengubah nama image sesuai dengan format GitHub Packages
docker tag raihanndaffaa/karsajobs-ui:latest ghcr.io/raihanndaffaa/karsajobs-ui:latest

# Login ke GitHub Packages
cat githubpass.txt | docker login ghcr.io --username raihanndaffaa --password-stdin

# Upload image ke GitHub Packages
docker push ghcr.io/raihanndaffaa/karsajobs-ui:latest