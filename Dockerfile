FROM httpd:2.4.41
WORKDIR /usr/local/apache2
COPY index.html htdocs/index.html
ADD zip.tar.gz htdocs/
