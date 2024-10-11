FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y nginx

RUN rm -rf /var/nginx/html/*

COPY index.html /var/www/html/index.html

ENTRYPOINT ["nginx", "-g", "daemon off;"]
