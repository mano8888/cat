FROM ubuntu
COPY target/dog.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash

FROM nginx
RUN apt-get update
RUN apt-get install -y nginx
COPY nexus /usr/local/nginx/html
ENTRYPOINT service nginx start && bash

FROM jenkins
USER root
ENV jAVA_OPTS=" -Xmx4096m"
ENV JENKINS_OPTS=" __handlerCounterMax=200"
RUN mkdir /var/log/jenkins-log
EXPOSE 8080
