FROM ubuntu:latest
RUN apt-get update
ADD . /var/www/html/
RUN service apache2 restart
ENTRYPOINT apachectl -D FOREGROUND
