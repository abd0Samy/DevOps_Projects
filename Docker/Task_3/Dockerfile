FROM httpd
COPY index.html /usr/local/apache2/htdocs/ 
COPY httpd.conf /usr/local/apache2/conf/
ENV CONTAINER="docker"
CMD ["/bin/sh","-c", "echo $CONTAINER; httpd-foreground"]
