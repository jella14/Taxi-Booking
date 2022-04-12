FROM tomcat:8
COPY /opt/JenkinsJobs/workspace/Taxi/webapp/target/webapp.war /usr/local/tomcat/webapps/
