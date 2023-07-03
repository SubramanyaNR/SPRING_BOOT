FROM adoptopenjdk:11-jre-hotspot
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
<<<<<<< HEAD



=======
>>>>>>> be4ab60aae0a16f72e6eb717f1457acc1e1e18e1
