FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install httpd -y && \
    yum install wget -y && \
    yum install unzip -y

# change directory
RUN cd /var/www/html

# download webfiles
RUN wget https://www.tooplate.com/zip-templates/2133_moso_interior.zip

# unzip folder
RUN unzip 2133_moso_interior.zip

# copy files into html directory
RUN cp -r 2133_moso_interior/* /var/www/html/

# remove unwanted files
RUN rm -rf 2133_moso_interior.zip 2133_moso_interior

# expose port 80 on the container
EXPOSE 80

# set the default application that will start when the container starts
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND"]