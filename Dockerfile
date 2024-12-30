FROM ubuntu:latest
LABEL "Author"="Roshan"
RUN apt update && apt install -y apache2
RUN apt install -y git
RUN apt install -y apache2-utils
RUN apt clean
WORKDIR /var/www/html
RUN rm -rf /var/www/html/index.html
RUN git clone https://github.com/roshanalmeida/nano.git .
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
