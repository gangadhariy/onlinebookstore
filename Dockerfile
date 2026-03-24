FROM docker.io/library/tomcat:latest
COPY /target/*.war /usr/local/tomcat/webapps/
RUN chgrp -R 0 /usr/local/tomcat && \
    chmod -R g=u /usr/local/tomcat
