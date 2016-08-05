FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \ 	
	php7.0-fpm \
	php7.0-curl \
	nginx \
	vim 

ADD configs/www.conf /etc/php/7.0/fpm/pool.d/www.conf
ADD configs/default /etc/nginx/sites-available/default
ADD scripts /scripts

EXPOSE 80

CMD bash /scripts/cmd.sh
