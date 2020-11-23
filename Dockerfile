FROM maven:3.6.3-adoptopenjdk-14 as package
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ /build/src/
RUN mvn package

FROM adoptopenjdk/openjdk14
COPY --from=package /build/target/*.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app.jar"]