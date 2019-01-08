FROM alpine:latest

RUN apk add --no-cache openjdk8-jre curl && \
  curl -L https://github.com/WebGoat/WebGoat/releases/download/v8.0.0.M21/webgoat-server-8.0.0.M21.jar -o webgoat.jar && \
  apk del curl && \
  adduser -D webgoat && chown -R webgoat webgoat.jar
  
EXPOSE 8080
USER webgoat
CMD ["java","-jar","webgoat.jar","--server.address=0.0.0.0"]
