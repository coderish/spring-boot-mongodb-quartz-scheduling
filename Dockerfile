FROM adoptopenjdk/openjdk11:latest
VOLUME /tmp
ADD target/quartz-scheduling-spring-boot-mongodb.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]