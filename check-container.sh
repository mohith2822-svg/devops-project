#!/bin/bash

CONTAINER="devops-flask-container"

if docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
    echo "SUCCESS: Container $CONTAINER is running."
else
    echo "ERROR: Container $CONTAINER is not running."
    exit 1
fi
