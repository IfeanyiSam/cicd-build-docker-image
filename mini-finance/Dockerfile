FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install httpd -y && \
    yum install wget -y && \
    yum install unzip -y

# change directory
RUN cd /var/www/html

# download webfiles
RUN wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip

# unzip folder
RUN unzip 2135_mini_finance.zip

# copy files into html directory
RUN cp -r 2135_mini_finance/* /var/www/html/

# remove unwanted files
RUN rm -rf 2135_mini_finance.zip 2135_mini_finance

# expose port 80 on the container
EXPOSE 80

# set the default application that will start when the container starts
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND"]