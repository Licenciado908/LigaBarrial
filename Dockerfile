# Imagen base liviana con JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el/los .java (si tienes más de uno, los incluirá)
COPY ./*.java /app/

# Compilamos (genera .class)
RUN javac Demo.java

# Command por defecto al ejecutar el contenedor
CMD ["java", "Demo"]
