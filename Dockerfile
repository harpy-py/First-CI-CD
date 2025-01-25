FROM debian:latest

RUN apt update && apt install -y \
    apache2 \
    zip \
    unzip

WORKDIR /var/www/html/

RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

EXPOSE 80 22
