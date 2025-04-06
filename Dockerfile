# Step 1: Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the .jar file from your local machine to the Docker image
# Assuming the .jar file is located in the target directory of your project
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/your-application.jar

# Step 4: Expose the port the application will run on (SonarQube default port is 9000)
EXPOSE 9090

# Step 5: Run the .jar file
ENTRYPOINT ["java", "-jar", "/app/your-application.jar"]
