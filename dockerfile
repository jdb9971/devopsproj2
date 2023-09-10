FROM ubuntu:latest
RUN apt-get update
RUN apt install apache2
ADD . /var/www/html/
RUN service apache2 restart
ENTRYPOINT apachectl -D FOREGROUND
