#!/bin/bash

if [ $LOGNAME != 'root' ] ; then
  echo "You need to update N8N with SUDO or as a ROOT"
  exit;
fi

# Go to instalation directory
cd $HOME/selfhosting-n8n-example

# Pull latest version
docker compose pull

# Stop and remove older version
docker compose down

# Start container
docker compose up -d