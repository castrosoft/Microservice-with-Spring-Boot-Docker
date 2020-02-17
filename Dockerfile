FROM centos
RUN yum install -y java
VOLUME /tmp
ADD target/microservice-0.0.1.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/v/./urandom","-jar","/app.jar"]

