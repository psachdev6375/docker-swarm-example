# Dockerfile for base container for deploying microservices 

#Pull base image 
FROM ubuntu 

#Install Java 
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define JAVA_HOME variable 
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Copy Eureka Application 
ADD eureka.jar eureka.jar 

# Touch the jar file 
RUN bash -c 'touch /eureka.jar'

# Expose 8010 port 
EXPOSE 8010

# Run eureka server 
CMD java -jar eureka.jar 
#ENTRYPOINT ["java", "-jar /eureka.jar"]


