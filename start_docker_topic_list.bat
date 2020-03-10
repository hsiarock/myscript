

REM use docker version

set IMAGE=confluentinc/cp-kafka:5.4.1
:set IMAGE=confluentinc/cp-kafka:latest

set KAFKA_ADVERTISED_LISTENERS=localhost:29092
:set KAFKA_ADVERTISED_LISTENERS=host.docker.internal:29092
set ZOOKEEPER_LISTENER=localhost:32181

:docker run -it --rm --network=host edenhill/kafkacat:1.5.0 -b %KAFKA_ADVERTISED_LISTENERS% -L

REM use Confuent Platform
docker run -it --rm --net=host %IMAGE% kafka-topics --list --zookeeper %ZOOKEEPER_LISTENER%

REM: use describe
docker run --net=host --rm %IMAGE% kafka-topics --describe --zookeeper %ZOOKEEPER_LISTENER%

