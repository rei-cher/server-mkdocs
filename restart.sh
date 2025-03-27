# !bin/bash

docker compose down
docker rmi server-mkdocs-mkdocs
docker compose up -d
