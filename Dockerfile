FROM nginx
FROM fabiocdo/odoo-nginx:latest

ADD default.conf /etc/nginx/conf.d/

RUN wget https://github.com/fabiocdo/odoo-nginx/archive/master.zip -O odoo-nginx.zip && \
    unzip -q odoo-nginx.zip && rm odoo-nginx.zip && mv odoo-nginx-master odoo-nginx    

COPY default.conf /etc/nginx/default.conf
