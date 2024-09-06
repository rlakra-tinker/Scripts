#!/bin/bash
echo
docker build -t tod/be-alpine -f infra/be/Dockerfile .
echo

