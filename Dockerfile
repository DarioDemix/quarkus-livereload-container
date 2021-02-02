FROM maven:3.6.3-jdk-13

WORKDIR /workspace/

COPY ./pom.xml .
COPY ./src ./src/

CMD ["mvn", "compile", "quarkus:dev", "-Dquarkus.package.type=mutable-jar"]