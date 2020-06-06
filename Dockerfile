FROM tomcat:9.0-jdk11
RUN cp -avT $CATALINA_HOME/webapps.dist/manager $CATALINA_HOME/webapps/manager
RUN cp -avT $CATALINA_HOME/webapps.dist/ROOT $CATALINA_HOME/webapps/ROOT
RUN cp -avT $CATALINA_HOME/webapps.dist/docs $CATALINA_HOME/webapps/docs
RUN cp -avT $CATALINA_HOME/webapps.dist/examples $CATALINA_HOME/webapps/examples
RUN cp -avT $CATALINA_HOME/webapps.dist/host-manager $CATALINA_HOME/webapps/host-manager
COPY target/gamutgurus.war webapps/
MAINTAINER nancymani "nancymani@gmail.com"
WORKDIR /usr/local/tomcat
COPY . .
EXPOSE 8080
CMD ["catalina.sh", "run"]
