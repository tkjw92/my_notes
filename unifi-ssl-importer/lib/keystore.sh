#!/bin/sh
keytool -importkeystore -deststorepass aircontrolenterprise -destkeypass aircontrolenterprise -destkeystore /tmp/out/keystore -srckeystore /tmp/server.pfx -srcstoretype PKCS12 -srcstorepass 1
