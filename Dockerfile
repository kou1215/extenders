# --- 1st stage: Build WAR file with Maven ---
FROM maven:3.9.6-eclipse-temurin-25 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# --- 2nd stage: Run on Tomcat 11 ---
FROM tomcat:11.0-jdk25
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
