# Use a minimal base image
FROM eclipse-temurin

# Create a system group named "user" with the -r flag
RUN groupadd -r user

# Create a system user named "user" and add it to the "user" group with the -r and -g flags
RUN useradd -r -g user user

# Set the working directory to /app
WORKDIR /app

# Change the ownership of the working directory to the non-root user "user"
CMD chown -R user:user /app


CMD ["java", "-jar", "SimpleTimeService-0.0.1-SNAPSHOT.jar"]

# Set the entrypoint command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "SimpleTimeService-0.0.1-SNAPSHOT.jar"]
