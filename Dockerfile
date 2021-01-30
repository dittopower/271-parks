FROM httpd:2.4

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./271js.conf /usr/local/apache2/conf/extra/271js.conf

# copy all the files to the container
COPY 271js /var/www/271js/

# logs dir
RUN mkdir -p /var/log/www/

# define the port number the container should expose
EXPOSE 81
