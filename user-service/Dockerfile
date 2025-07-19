FROM openjdk:21-jdk-slim
WORKDIR /app
COPY target/user-service-0.0.1-SNAPSHOT.jar app.jar
COPY src/main/resources/keystore.p12 /app/keystore.p12
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]