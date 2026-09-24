#!/bin/bash

if docker pull ghcr.io/dobrealeksa/hello:v1 | grep "Downloaded newer image"; then
    docker stop pipeline-main 2>/dev/null || true
    docker rm pipeline-main || true
    docker run -d -p 8000:8000 --name pipeline-main ghcr.io/dobrealeksa/hello:v1 
else
    if docker ps | grep -q pipeline-main; then
        exit 0
    else
        docker start pipeline-main
    fi
    echo "Nema nove verzije"
    exit 0
fi

