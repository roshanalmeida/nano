FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install apache2 git -y
CMD ["/usr/bin/apache2","D","FOREGROUD"]
EXPOSE 80
WORKDIR /var/www/html
ADD nano.tar.gz /var/www/html
