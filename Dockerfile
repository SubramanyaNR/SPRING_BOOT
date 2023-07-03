FROM adoptopenjdk:11-jre-hotspot
WORKDIR /app
COPY target/*.jar demo-sin-bd-0.0.1-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "demo-sin-bd-0.0.1-SNAPSHOT.jar"]
