#! /bin/sh
git clone https://github.com/Blockchain-utility-applications/mock-blockchain-swagger-ui.git
git clone https://github.com/Blockchain-utility-applications/ingest-service.git
docker-compose build 
docker-compose up