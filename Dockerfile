FROM openjdk:11-jre-slim AS builder
WORKDIR /app
COPY /app/target/my-app-1.0-SNAPSHOT.jar ./app.jar

# Use the builder image to build a final image
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=builder /app/app.jar ./app.jar
CMD ["java", "-jar", "app.jar"]

