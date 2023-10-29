FROM anapsix/alpine-java 
COPY /target/SpringHelloAPP.jar /home/SpringHelloAPP.jar 
CMD ["java","-jar","/home/SpringHelloAPP.jar"]
