#!/bin/bash

apt-get install nginx -y
rm /etc/nginx/sites-available/default && cp default /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

