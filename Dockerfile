FROM centos:7
RUN yum -y install nc
RUN mkdir /webserver
COPY . /webserver
RUN chmod +x /webserver/webserver.sh
EXPOSE 8888
CMD /webserver/webserver.sh
