FROM openjdk:8-jdk
MAINTAINER Daniel Persson (myemail@gmail.com)
RUN apt-get update
RUN apt-get install -y maven
COPY pom.xml /usr/local/service/pom.xml
COPY target /usr/local/service/target
WORKDIR /usr/local/service
CMD ["java","-jar","target/docker-service-1.0-SNAPSHOT-jar-with-dependencies.jar"]
