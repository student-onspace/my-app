FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
# Added to test webhook
