# Usa a imagem do OpenJDK 21 (LTS) para garantir estabilidade
FROM bellsoft/liberica-openjdk-debian:23 AS build

WORKDIR /app

COPY . .

RUN ./mvnw clean package -DskipTests

FROM bellsoft/liberica-openjdk-debian:23

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]
