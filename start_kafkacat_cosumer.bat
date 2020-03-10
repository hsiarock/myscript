
docker run -it --rm --network=host edenhill/kafkacat:1.5.0 -b 'localhost:9092'  -C -t connect-test
