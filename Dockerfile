# Use porchn/jmeter-3.0-base

FROM porchn/jmeter-3.0-base
MAINTAINER Porchn

# mkdir userconfig
RUN mkdir -p /jmeter/{userconfig,test}
RUN mv /jmeter/apache-jmeter-${JMETER_VERSION}/bin/user.properties /jmeter/userconfig

# renew user.properties path
RUN perl -pi -e 's/user.properties=user.properties/user.properties=\/jmeter\/userconfig\/user.properties/g' /jmeter/apache-jmeter-${JMETER_VERSION}/bin/jmeter.properties


# copy test file
COPY *.jmx /jmeter/jmxfile

# create volume
VOLUME /jmeter/jmxfile

# Ports to be exposed from the container for JMeter Master
EXPOSE 60000
