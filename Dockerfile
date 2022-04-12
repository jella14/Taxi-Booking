FROM tomcat:8
WORKDIR /opt/JenkinsJobs/workspace/Taxi/webapp/target/
COPY webapp.war /usr/local/tomcat/webapps/
