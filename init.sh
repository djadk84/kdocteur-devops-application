
# Create docker images
cd nodejs && docker build -t sweatworks_nodeapp00 . && cd ..

# create pgsql data directory
mkdir -p pgdata

# Run docker composer
docker-compose up -d
