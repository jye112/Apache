FROM ubuntu:18.04
 
RUN apt install apache2 -y
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2/apache2.pid 
 
EXPOSE 80
 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]