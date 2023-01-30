FROM centos:7
LABEL Description="Building homework docker image"
RUN yum -y update
RUN yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd"] # entrypoint
CMD [ "-D", "FOREGROUND" ]