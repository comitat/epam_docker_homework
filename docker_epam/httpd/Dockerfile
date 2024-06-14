FROM httpd

MAINTAINER k.gromov

ENV TZ=Europe/Moscow

RUN apt update -y  \ 
       && apt install -y vim \ 
       && apt install -y less \ 
       && apt-get clean \ 
       && rm -rf /tmp/* /var/lib/apt/lists/*
RUN mkdir -p /var/www/site_epam
COPY httpd.conf  /usr/local/apache2/conf/
WORKDIR /var/www/site_epam
COPY index.html . 

EXPOSE 80
