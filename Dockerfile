FROM openjdk:8-jdk-alpine
MAINTAINER eatgrass <eatgrass@squirrush.com>

VOLUME /tmp
ADD build/libs/eureka-server.jar eureka-server.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java -jar $JAVA_OPTS /eureka-server.jar"]

EXPOSE 8002