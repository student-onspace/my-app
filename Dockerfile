FROM tomcat:8.0-jre8
COPY target/*.war $CATALINA_HOME/webapps/myweb.war
# Added to test webhook
