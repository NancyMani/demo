FROM tomcat:9.0-jdk11
MAINTAINER nancymani "nancymani@gmail.com"
COPY . .
COPY target/gamutgurus.war usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080
ENTRYPOINT ["java","-war","gamutgurus.war"]
