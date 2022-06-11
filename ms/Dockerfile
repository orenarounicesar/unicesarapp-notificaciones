FROM openjdk:17-alpine
ADD unicesarapp-notificaciones-0.0.1.jar /opt/ms/unicesarapp-notificaciones-0.0.1.jar
ENTRYPOINT ["/opt/openjdk-17/bin/java", "-jar", "/opt/ms/unicesarapp-notificaciones-0.0.1.jar", "--spring.profiles.active=prd", "--logging.file.name=/opt/ms/unicesarapp-notificaciones-0.0.1.log"]
