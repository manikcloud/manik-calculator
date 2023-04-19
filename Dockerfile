# Use the official Maven image as the base image
FROM maven:3.8.1-openjdk-11 AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml file into the working directory
COPY pom.xml .

# Download dependencies (this will cache them in a separate layer, so they don't have to be downloaded every time the code changes)
RUN mvn dependency:go-offline

# Copy the source code into the working directory
COPY src /app/src

# Build the project
RUN mvn clean package

# Use the adoptopenjdk/openjdk11:alpine image as the base image for the runtime
FROM adoptopenjdk/openjdk11:alpine

# Install Tomcat
ENV TOMCAT_VERSION 9.0.54
RUN apk add --no-cache --update curl
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN rm apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN mv apache-tomcat-${TOMCAT_VERSION} /usr/local/tomcat

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove default webapps from Tomcat to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built war file into the Tomcat webapps directory
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
