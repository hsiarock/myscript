
REM run docker to produce message 
REM you must provide topic name as %1
REM

set IMAGE=confluentinc/cp-kafka:5.4.1
:set IMAGE=confluentinc/cp-kafka:latest
set TOPIC=%1
set PARTITION=1
set REPICATION_FACTOR=1
set ZOOKEEPER_LISTENER=localhost:32181
set KAFKA_BROKER=localhost:29092


REM docker run --net=host --rm %IMAGE% ^
REM bash -c "seq 42 | kafka-console-producer ^
REM --broker-list %KAFKA_BROKER% ^
REM --topic %TOPIC% && echo 'Produced 42 messages.'"

docker run -it --rm --net=host %IMAGE% kafka-topics ^
 --list --zookeeper %ZOOKEEPER_LISTENER%



