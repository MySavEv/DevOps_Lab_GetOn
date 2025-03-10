#!/bin/bash

BACKUPCERT=./backup_certs
NGINXCERT=./nginx-ssl
NEWCERT=./new-certs

CRTNAME=server.crt
KEY=server.key

mv $NGINXCERT/* $BACKUPCERT
cp $NEWCERT/* $NGINXCERT

docker exec nginx-container_name nginx -s reload
