FROM maven:3.8.4-openjdk-11 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar ./app.jar
CMD ["java", "-jar", "app.jar"]

