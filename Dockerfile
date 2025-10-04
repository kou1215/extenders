FROM tomcat:11.0-jdk25
COPY build/libs/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
