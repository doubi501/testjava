# FROM 10.128.222.245:5000/tomcat

# ADD docker-demo.war /usr/local/apache-tomcat-6.0.45/webapps/

# ### run ###
# EXPOSE 8080
# CMD ["catalina.sh", "run"]

FROM 10.128.222.245:5000/frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD docker-demo  app.jar
#RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
