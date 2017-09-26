# Start the service
docker stack deploy -c docker-compose.yml hellodocker

# Remove the service
docker stack rm hellodocker
