#!/usr/bin/env bash

TAG=3.3 docker-compose build --build-arg TAG=3.3
TAG=3.3 docker-compose push
