FROM openjdk:18.0.1

ARG JAR_FILE=target/jira-1.0.jar

WORKDIR /app

COPY ${JAR_FILE} /jira-app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar","/jira-app.jar"]