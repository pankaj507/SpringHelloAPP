FROM openjdk:17
COPY target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar SpringBootHelloWorld-0.0.1-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar"]
