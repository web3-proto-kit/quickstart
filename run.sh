#! /bin/sh
git clone https://github.com/web3-proto-kit/message-generator-api.git
git clone https://github.com/web3-proto-kit/ingest-service.git
git clone https://github.com/web3-proto-kit/client-message-emitter-service.git
git clone https://github.com/web3-proto-kit/ui-table-view.git
docker-compose build 
docker-compose up