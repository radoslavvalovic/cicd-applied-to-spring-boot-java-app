# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="radoslav.valovic@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE
#toto asi nefunguje ARG JAR_FILE=target/cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
# cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app.jar
ADD ${JAR_FILE} cicd-applied-to-spring-boot-java-app.jar

# Run the jar file 
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/cicd-applied-to-spring-boot-java-app.jar"]
