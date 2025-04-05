# Use the official Tomcat image with JDK 11
FROM tomcat:9-jdk11

# Remove default webapps to avoid conflicts (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory and rename it to hello.war
COPY target/*.war /usr/local/tomcat/webapps/hello.war

# Expose the default Tomcat port
EXPOSE 8080

