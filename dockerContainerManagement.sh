#!/bin/bash
echo "Listing all docker containers"
docker ps -a
echo "Stopping all running containers"
docker stop $(docker ps -q)
echo "Removing stopped containers"
docker rm $(docker ps -a -q)
echo "Clean up complete"