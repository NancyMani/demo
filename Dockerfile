FROM tomcat:9.0-jdk11
MAINTAINER nancymani "nancymani@gmail.com"
COPY . .
CMD ["catalina.sh", "run"]

FROM maven:3.6.3-jdk-8
ADD /target/gamutgurus.war gamutgurus.war
EXPOSE 8080
ENTRYPOINT ["java","-war","gamutgurus.war"]
