FROM centos:latest
RUN yum install httpd -y \
 zip \
 unzip
ADD  https://www.free-css.com/free-css-templates/page263/jackpiro /var/www/html
WORKDIR /var/www/html
RUN cp -rvf jackpiro/* .
CMD ['//usr/sbin/httpd'. '-D' 'FOREGROUND']
EXPOSE 80m 
