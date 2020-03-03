FROM maven:3-jdk-11 as builder
EXPOSE 8080
ARG JAR_FILE=target/k8-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]