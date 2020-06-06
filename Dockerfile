FROM tomcat:9.0-jdk11
MAINTAINER nancymani "nancymani@gmail.com"
WORKDIR . /webapps
ADD . /webapps
COPY target/gamutgurus.war usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
