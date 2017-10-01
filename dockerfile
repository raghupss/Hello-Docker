FROM tomcat:8.0
RUN apt-get update && apt-get install -y \
        curl \
        nano \
        procps

#Copy tomcat-users.xml  to the new image
COPY ./web/tomcat-users.xml /usr/local/tomcat/conf/
COPY ./target/HelloDocker-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
