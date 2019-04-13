#!/usr/bin/env bash

TAG=3.3.1 docker-compose build --build-arg TAG=3.3.1
TAG=3.3.1 docker-compose push
