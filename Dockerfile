FROM maven:3.5.0-jdk-8

WORKDIR /app

ADD . /app

RUN ["mvn", "clean", "install"]

EXPOSE 8080
EXPOSE 8443

EXPOSE 8081
EXPOSE 8444

CMD ["java", "-jar", "target/dropwizard-example.jar", "server", "example.yml"]
