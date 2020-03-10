
REM run docker to create topic 
REM you must provide topic name as %1
REM

set IMAGE=confluentinc/cp-kafka:5.4.1
:set IMAGE=confluentinc/cp-kafka:latet
set TOPIC=%1
set PARTITION=1
set REPICATION_FACTOR=1
set ZOOKEEPER_LISTENER=localhost:32181

docker run --net=host --rm %IMAGE% kafka-topics ^
 --create --topic %TOPIC% ^
 --partitions %PARTITION% ^
 --replication-factor %REPICATION_FACTOR% ^
 --if-not-exists --zookeeper %ZOOKEEPER_LISTENER%

REM verify/describe topic

REM docker run --net=host --rm %IMAGE% kafka-topics ^
REM  --describe --zookeeper %ZOOKEEPR_LISTENER%

docker run -it --rm --net=host %IMAGE% kafka-topics ^
 --list --zookeeper %ZOOKEEPER_LISTENER%

REM docker run -it --rm --network=host edenhill/kafkacat:1.5.0 -b %KAFKA_ADVERTISED_LISTENERS% -L



 
