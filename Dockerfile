FROM tomcat:8.0-alpine

# Copy the web folder to be deployed as the ROOT webapp.
COPY web /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]