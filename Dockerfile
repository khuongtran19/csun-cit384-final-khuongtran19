FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive
ENV TZ=US
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade && apt-get -y install apache2

COPY ./newsite.html /var/www/newsite/html/index.html
COPY ./newsite.conf /etc/apache2/sites-available/newsite.conf

COPY ./mywebsite.html /var/www/mywebsite.cit384/index.html
COPY ./special.html /var/www/special.cit384/index.html
COPY ./final.html /var/www/final.cit384/index.html

COPY ./mywebsite.cit384 /etc/apache2/sites-available/mywebsite.cit384.conf
COPY ./special.cit384 /etc/apache2/sites-available/special.cit384.conf
COPY ./final.cit384 /etc/apache2/sites-available/final.cit384.conf

COPY ./submission.txt /home/
COPY ./Dev/ /var/www/final.cit384/

COPY ./certificate.pem /usr/local/share/ca-certificates/certificate.pem
RUN update-ca-certificates

RUN groupadd cit384
RUN useradd -m -s /bin/bash user1
RUN gpasswd -M user1 cit384 
RUN chown -R user1:user1 /var/www
RUN chmod -R 755 /var/www
USER user1
WORKDIR /home/user1
COPY ./user1/index.html /var/www/html/index.html
COPY ./user1/style.css /var/www/html/style.css

USER root
RUN useradd -m -s /bin/bash user2
RUN gpasswd -M user2 cit384
RUN chown -R user2:user2 /var/www
RUN chmod -R 755 /var/www
USER user2
WORKDIR /home/user2
COPY ./user2/index.html /var/www/html/index.html
COPY ./user2/style.css /var/www/html/style.css

USER root
WORKDIR /
RUN ls -s /etc/apache2/sites-available/mywebsite.cit384.conf /etc/apache2/sites-enabled/
RUN ls -s /etc/apache2/sites-available/special.cit384.conf /etc/apache2/sites-enabled/
RUN ls -s /etc/apache2/sites-available/final.cit384.conf /etc/apache2/sites-enabled/
RUN ls -s /etc/apache2/sites-available/newsite.conf /etc/apache2/sites-enabled/
COPY ./hosts /etc/hosts
RUN apache2ctl restart

COPY ./x-final-cit384.cgi .

EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D", "FOREGROUND"]
