FROM docker.io/library/tomcat:latest
COPY /target/*.war /usr/local/tomcat/webapps/
