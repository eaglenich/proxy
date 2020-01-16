FROM centos:latest

RUN yum update -y
##RUN yum install java -y

RUN git clone https://github.com/eaglenich/proxy.git
RUN cd ./proxy
RUN tree
RUN wget -r --no-parents http://cs-repo.qulix.com/content/groups/public/org/apache/httpcomponents/httpclient/4.2.1/
RUN git push
#ADD https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.14.0-04-unix.tar.gz /opt
#RUN cd /opt && tar xvfz nexus-3.14.0-04-unix.tar.gz

#EXPOSE 8081
#CMD ["/opt/nexus-3.14.0-04/bin/nexus", "run"]
