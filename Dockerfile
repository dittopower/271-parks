FROM php:5.6-apache

# COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./ports.conf /etc/apache2/ports.conf
COPY ./271js.conf /etc/apache2/sites-available/271js.conf
COPY ./271.conf /etc/apache2/sites-available/271.conf

# copy all the files to the container
COPY 271js /var/www/271js/
COPY 271 /var/www/271/

# logs dir
RUN mkdir -p /var/log/www/

# define the port number the container should expose
EXPOSE 81

# RUN set -eux; \
# 	apt-get update;
	# apt-get install -y --no-install-recommends \
    #     php-mysql; \
    # rm -rf /var/lib/apt/lists/* ;

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN a2enmod expires;
RUN a2ensite 271js; \
    a2ensite 271;
RUN a2dissite 000-default;
