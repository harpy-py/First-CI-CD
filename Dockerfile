FROM debian:latest

RUN apt update && apt install -y \
    apache2 \
    zip \
    unzip

WORKDIR /var/www/html/
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22 21