#!/bin/sh

mkdir /etc/nginx/ssl

cd /etc/nginx/ssl

openssl genrsa 2048 > server.key

openssl req -new -key server.key <<EOF > server.csr
JP
Hokkaido
Sapporo
BankingSystems
Solution Development Department
oreore.com



EOF

openssl x509 -days 3650 -req -signkey server.key < server.csr > server.crt
