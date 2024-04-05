FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./sites-enabled /etc/nginx/sites-enabled
COPY ./conf /etc/nginx/conf.d/:ro
COPY ./certbot/www/ /var/www/certbot/:ro