FROM httpd:2.4

# copy all the files to the container
COPY 271js /usr/local/apache2/htdocs/

