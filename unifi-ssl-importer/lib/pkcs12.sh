#!/bin/bash
openssl pkcs12 -export -inkey data/server.key -in data/server.pem -out data/server.pfx -password pass:1
