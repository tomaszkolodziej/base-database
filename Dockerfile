FROM java:8

ENV appName ${artifactId}-${version}.jar

WORKDIR /app

COPY maven/${appName} /app/base-database.jar

ENTRYPOINT ["java", "-jar", "/app/base-database.jar"]
