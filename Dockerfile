FROM php:5.6-apache

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get -y install apt-utils \
 && apt-get -y dist-upgrade

EXPOSE 80
WORKDIR /var/www/html/
COPY . /var/www/html
RUN ln -s /var/www/html /var/www/html/speedtest
CMD ["/usr/local/bin/apache2-foreground"]
