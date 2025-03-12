# Usa a imagem do OpenJDK 21 (LTS) para garantir estabilidade
FROM bellsoft/liberica-openjdk-debian:23

# Define um diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR gerado pelo Maven/Gradle
COPY target/*.jar app.jar

# Define a porta padrão que o app usará
EXPOSE 8080

# Comando para rodar o app
CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]
