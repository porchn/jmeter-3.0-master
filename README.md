# jmeter-3.0-master
jmetet master


# Create Container Master
```
sudo docker run -dit --name master porchn/jmeter-3.0-master /bin/bash

```
#Volume for container

* `/jmeter/jmxfile` # for test file *.jmx 
* `/jmeter/mapping`  # for mapping elasticsearch index
* `/jmeter/userconfig` # for config jmeter user.properties

# How to Use it
```
sudo docker exec -it master /bin/bash

cd /jmeter/apache-jmeter-3.0/bin

sh jmeter.sh -n -t /jmeter/jmxfile/mytest.jmx
```


**Create :** [JMeter – Distributed Load Testing using Docker](http://www.testautomationguru.com/jmeter-distributed-load-testing-using-docker/)

