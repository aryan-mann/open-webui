#!/bin/bash

# List available services
echo "Available services:"
docker compose ps --services

# Set default service name
DEFAULT_SERVICE="open-webui"

# Ask the user for input
read -p "Enter the service name to tail logs (default: $DEFAULT_SERVICE): " SERVICE_NAME

# Use the default if no input is provided
SERVICE_NAME=${SERVICE_NAME:-$DEFAULT_SERVICE}

echo "Tailing logs for service: $SERVICE_NAME"
docker compose logs -f $SERVICE_NAME
