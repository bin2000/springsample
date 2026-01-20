FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the built application JAR (Gradle build step produces it)
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
