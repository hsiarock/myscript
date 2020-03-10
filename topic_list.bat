set KAFKA_EXEC=C:\Apache\kafka_2.11-2.4.0\bin\windows
set TOPIC=%1

#%KAFKA_EXEC%\kafka-topics.bat --list --zookeeper localhost:2181

# use docker version

#docker run -it --rm --network=host edenhill/kafkacat:1.5.0 -b host.docker.internal:32181 -L

# use Confuent Platform
#docker run -it --rm --net=host confluentinc/cp-kafka:4.0.0 kafka-topics --list --zookeeper localhost:32181

# use Confuent Platform
docker run -it --rm --net=host confluentinc/cp-kafka:4.0.0 -b localhost:29092

