# Install unifi controller certificate
```
openssl pkcs12 -export -inkey server.key -in server.pem -out server.pfx
keytool -importkeystore -deststorepass aircontrolenterprise -destkeypass aircontrolenterprise -destkeystore keystore -srckeystore server.pfx -srcstoretype PKCS12
```
