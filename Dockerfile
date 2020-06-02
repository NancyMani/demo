FROM tomcat:9.0-jdk11
MAINTAINER nancymani "nancymani@gmail.com"
COPY . .
CMD ["catalina.sh", "run"]
