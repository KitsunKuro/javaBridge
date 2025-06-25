FROM tomcat:9.0-jdk8

RUN rm -rf /usr/local/tomcat/webapps/*

COPY JavaBridge.war /usr/local/tomcat/webapps/

# Cài unzip và php-cgi, sau đó giải nén WAR
RUN apt-get update && \
    apt-get install -y unzip php-cgi && \
    unzip /usr/local/tomcat/webapps/JavaBridge.war -d /usr/local/tomcat/webapps/JavaBridge

EXPOSE 8080

CMD ["catalina.sh", "run"]
