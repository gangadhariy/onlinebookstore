FROM docker.io/library/tomcat:latest

# Copy WAR as ROOT
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

# Fix permissions for OpenShift
RUN chgrp -R 0 /usr/local/tomcat && \
    chmod -R g+rwX /usr/local/tomcat
