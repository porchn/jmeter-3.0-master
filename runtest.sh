#!/bin/sh

/jmeter/apache-jmeter-${JMETER_VERSION}/bin/jmeter -n -t /jmeter/jmxfile/mytest.jmx -l /data/result.csv