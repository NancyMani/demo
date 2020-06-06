FROM tomcat:9.0-jdk11
MAINTAINER nancymani "nancymani@gmail.com"
//COPY . .
WORKDIR /webapps
COPY target/gamutgurus.war usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
ENTRYPOINT ["java","-war","gamutgurus.war"]
