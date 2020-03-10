

REM use docker version Kafkacat

set IMAGE=confluentinc/cp-kafka:5.4.1
:set IMAGE=confluentinc/cp-kafka:latest

set KAFKA_ADVERTISED_LISTENERS=kafka0:29092
:set KAFKA_ADVERTISED_LISTENERS=localhost:29092
:set KAFKA_ADVERTISED_LISTENERS=host.docker.internal:29092
set ZOOKEEPER_LISTENER=localhost:32181

docker run -it --rm --network=host edenhill/kafkacat:1.5.0 -b %KAFKA_ADVERTISED_LISTENERS% -L



