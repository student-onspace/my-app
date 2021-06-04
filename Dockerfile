FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
EXPOSE 8080
CMD [“catalina.sh”, “run”]
# Added to test webhook
