FROM centos:latest

RUN yum update -y
RUN yum install java -y

ADD https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.14.0-04-unix.tar.gz /opt
RUN cd /opt && tar xvfz nexus-3.14.0-04-unix.tar.gz

EXPOSE 8081
CMD ["/opt/nexus-3.14.0-04/bin/nexus", "run"]
