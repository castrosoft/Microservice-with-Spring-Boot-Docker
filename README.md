# Microservice-with-Spring-Boot-Docker
Microservice with Spring Boot &amp; Docker

1- New project Sprint Initializr
2- new package -> models -> new Class -> Greeting
3- new package -> controllers -> new Class -> MainController
4- Se crea un endpoint (GET) en MainController

#Using Docker
Se crea una imagen de Docker a partir del service anterior

Situado en la ruta del proyecto:

./mvnw clean package (Se genera el jar)

touch Dockerfile (editarlo)

#Se crea la imagen a partir del Dockerfile (con el nombre spring_boot_docker)

docker build -t spring_boot_docker . 

#Despliego la app a partir de la imagen de Docker

docker run -d -p 8080:8080 spring_boot_docker

#Valido si esta corriendo el container

docker ps


Listo, el service esta corriendo sobre el container.
http://localhost:8080/greeting 








