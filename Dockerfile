FROM tomcat:8.0-alpine

# Copy the web folder contents into Tomcat's ROOT webapp directory.
# This replaces the missing sample.war. Adjust the destination as needed.
COPY web/ /usr/local/tomcat/webapps/ROOT/

# Tomcat normally listens on 8080.
EXPOSE 8080

CMD ["catalina.sh", "run"]