FROM ubuntu:24.04

RUN apt update

RUN apt install -y apache2

COPY html /var/www/html/
WORKDIR /var/www/html/

RUN date > /var/www/html/buildtime.txt

EXPOSE 80
CMD service apache2 start && bash




