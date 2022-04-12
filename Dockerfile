FROM tomcat:8
ADD webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
