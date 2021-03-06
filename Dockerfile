FROM java:8-jre

ENV JAVA_OPTS=""

VOLUME /tmp
EXPOSE 8761

ADD target/*.jar /app.jar
RUN sh -c 'touch /app.jar'

ENTRYPOINT java -jar $JAVA_OPTS /app.jar