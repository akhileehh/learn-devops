# 1. Set base image
FROM openjdk:17-jdk-alpine

# 2. Add metadata
LABEL maintainer="akhil@example.com"

# 3. Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

# 4. Set working directory inside the container
WORKDIR /app

# 5. Copy files from host to container
COPY target/myapp.jar app.jar

# 6. Run a command during image build
RUN echo "App jar copied successfully"

# 7. Expose a port for documentation
EXPOSE 8080

# 8. Default command to run when container starts
CMD ["java", "-jar", "app.jar"]
