FROM openjdk:11-jre-slim
WORKDIR /app
COPY my-app-1.0-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "app.jar"]

