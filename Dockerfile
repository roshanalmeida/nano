FROM ubuntu:latest
LABEL "Author"="Roshan"
RUN apt update && apt install -y apache2
RUN apt install -y git
RUN apt install -y apache2-utils
RUN apt clean
COPY . /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
