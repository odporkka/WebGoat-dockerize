FROM ubuntu:16.04

RUN apt-get update && apt-get install -y default-jre
EXPOSE 8080
COPY webgoat-server-8.0.0.M21.jar .
CMD ["java","-jar","webgoat-server-8.0.0.M21.jar","--server.address=0.0.0.0"]
