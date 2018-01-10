FROM 10.128.222.245:5000/tomcat

ADD docker-demo.war /usr/local/apache-tomcat-6.0.45/webapps/

### run ###
EXPOSE 8080
CMD ["catalina.sh", "run"]
