FROM nginx

MAINTAINER k.gromov

ENV TZ=Europe/Moscow

RUN  apt update -y \ 
       && apt install -y vim \ 
       && apt install -y less \ 
       && apt-get clean \ 
       && rm -rf /tmp/* /var/lib/apt/lists/*
COPY default.conf /etc/nginx/conf.d/
RUN mkdir -p /var/www/site_epam
COPY index.html /var/www/site_epam

EXPOSE 80
