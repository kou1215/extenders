# Tomcat 11 + Java 25 イメージ
FROM tomcat:11.0-jdk25

# WAR ファイルを Tomcat に配置
COPY target/myapp.war /usr/local/tomcat/webapps/

# ポート設定
EXPOSE 8080

# Tomcat 起動
CMD ["catalina.sh", "run"]
