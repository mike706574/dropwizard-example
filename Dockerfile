FROM openjdk:8

EXPOSE 80
EXPOSE 443

WORKDIR /app

ADD target/dropwizard-example.jar .
ADD example.yml .

CMD ["java", "-jar", "dropwizard-example.jar", "server", "example.yml"]
