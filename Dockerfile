FROM centos:7
LABEL Description="Building docker image for Jenkins pipeline!"
RUN yum -y update
RUN yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd"] # entrypoint
CMD [ "-D", "FOREGROUND" ]