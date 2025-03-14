FROM tomcat:8.0-alpine

# Copy the web application folder into Tomcat’s webapps directory as ROOT
# This makes the application accessible on the context root "/"
COPY web/ /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat's default port (8080)
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]