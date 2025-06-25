# 1. Sử dụng Tomcat 9 với JDK 8 để tương thích với môi trường local
FROM tomcat:9.0-jdk8

# 2. Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy file JavaBridge.war vào thư mục deploy của Tomcat
COPY JavaBridge.war /usr/local/tomcat/webapps/

# 4. Cài unzip và giải nén .war (exploded deployment)
RUN apt-get update && apt-get install -y unzip
RUN unzip /usr/local/tomcat/webapps/JavaBridge.war -d /usr/local/tomcat/webapps/JavaBridge

# 5. Mở port 8080
EXPOSE 8080

# 6. Khởi động Tomcat
CMD ["catalina.sh", "run"]
