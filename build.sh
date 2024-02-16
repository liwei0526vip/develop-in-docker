#!/bin/bash


image=ubuntu-dev:22.04
docker build -f Dockerfile -t ${image} .
#docker build -f Dockerfile --pull -t ${image} .

