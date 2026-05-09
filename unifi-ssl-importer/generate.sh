#!/bin/bash

lib/pkcs12.sh
docker run --rm --name keytool-tmp -v ./data/server.pfx:/tmp/server.pfx -v ./data/out:/tmp/out -v ./lib/keystore.sh:/tmp/keystore.sh openjdk:19-ea-jdk-alpine3.16 /tmp/keystore.sh
mv data/out/keystore .
rm -rf data/out data/server.pfx
