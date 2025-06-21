# Base image: Tomcat 9 + JDK 17
FROM tomcat:9.0-jdk17

# Copy JavaBridge.war vào thư mục ứng dụng của Tomcat
COPY JavaBridge.war /usr/local/tomcat/webapps/

# Mở cổng 8080 (Render sẽ tự ánh xạ sang HTTPS)
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]