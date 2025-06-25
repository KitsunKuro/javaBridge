# Base image: Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk8

# Xóa các ứng dụng mặc định của Tomcat để tránh xung đột
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war đã build sẵn vào thư mục ứng dụng của Tomcat
COPY JavaBridge.war /usr/local/tomcat/webapps/

# Expose cổng 8080, Render sẽ tự ánh xạ sang HTTPS ngoài
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]
