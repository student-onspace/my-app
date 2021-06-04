#FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/myweb.war
FROM centos
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
