#!/bin/bash
# Author: Rohtash Lakra
IMAGE_ID=${1:''}
echo "Accessing ${IMAGE_ID} via SSH"
echo
docker run --rm -it --entrypoint=/bin/bash $IMAGE_ID
echo