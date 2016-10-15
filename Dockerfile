# Use porchn/jmeter-3.0-base

FROM porchn/jmeter-3.0-base
MAINTAINER Porchn

# install vim
RUN apt-get -y install vim

# copy test file
COPY *.jmx /jmeter/jmxfile

# create volume
VOLUME /jmeter/jmxfile

# Ports to be exposed from the container for JMeter Master
EXPOSE 60000
