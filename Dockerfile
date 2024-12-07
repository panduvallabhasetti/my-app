FROM openjdk:11-jre-slim
WORKDIR /app
COPY /var/lib/jenkins/workspace/RAJU/target/my-app-1.0-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "app.jar"]
