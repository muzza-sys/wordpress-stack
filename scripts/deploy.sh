#!/bin/bash

# Load environment variables
export $(cat .env | xargs)

# Pull the latest version
echo "Pulling latest code from repository..."
git pull origin main

# Restart Docker services
echo "Restarting Docker services..."
docker-compose down
docker-compose up -d --build

echo "Deployment complete! Visit http://${DOMAIN} to view your site."