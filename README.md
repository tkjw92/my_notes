# Install unifi controller certificate
```
openssl pkcs12 -export -inkey server.key -in server.pem -out server.pfx
keytool -importkeystore -deststorepass aircontrolenterprise -destkeypass aircontrolenterprise -destkeystore keystore -srckeystore server.pfx -srcstoretype PKCS12
```

# Show mysql database size
```
SELECT
    table_schema AS 'Database Name',
    SUM(data_length + index_length) AS 'Size in Bytes',
    ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS 'Size in MiB'
FROM
    information_schema.tables
GROUP BY
    table_schema
ORDER BY
    'Size in Bytes' DESC;
```
