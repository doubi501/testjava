FROM 10.29.0.5:5000/shares/tomcat:8.5.29-jre8

ADD docker-demo.war /usr/local/tomcat/webapps/

### run ###
EXPOSE 8080
CMD ["catalina.sh", "run"]
