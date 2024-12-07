FROM openjdk:11-jre-slim
WORKDIR /app
COPY /app/target/my-app-1.0-SNAPSHOT.jar ./app.jar
CMD ["java", "-jar", "app.jar"]

