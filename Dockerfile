# Start with a base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY /var/lib/jenkins/workspace/RAJU/target/my-app-1.0-SNAPSHOT.jar /app/app.jar

# Define the command to run the JAR file
CMD ["java", "-jar", "app.jar"]


