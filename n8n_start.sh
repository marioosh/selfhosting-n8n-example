#!/bin/bash

# Load environment variables from .env file
set -a
source .env
set +a

# Start the Docker containers
docker-compose up -d