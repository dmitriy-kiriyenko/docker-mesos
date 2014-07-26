FROM dockerfile/java
MAINTAINER Dmitriy Kiriyenko dmitriy.kiriyenko@gmail.com

# Install maven
RUN \
  apt-get install -y maven && \
  ln -s /usr/lib/jvm/java-1.7.0-openjdk-amd64/jre/lib/amd64/server/libjvm.so /usr/lib/libjvm.so

# Install Mesos
RUN apt-get -y install curl
ADD http://downloads.mesosphere.io/master/ubuntu/14.04/mesos_0.19.1-1.0.ubuntu1404_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb
