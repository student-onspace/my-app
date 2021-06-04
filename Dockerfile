FROM tomcat:7-jre7
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
# Added to test webhook
