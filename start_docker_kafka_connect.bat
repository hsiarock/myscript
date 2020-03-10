
set IMAGE=confluentinc/cp-kafka-connect:5.4.1
:set IMAGE=confluentinc/cp-kafka-connect:latest

docker run -d ^
  --name=kafka-connect-avro ^
  --net=host ^
  -e CONNECT_BOOTSTRAP_SERVERS=localhost:29092 ^
  -e CONNECT_REST_PORT=28083 ^
  -e CONNECT_GROUP_ID="quickstart-avro" ^
  -e CONNECT_CONFIG_STORAGE_TOPIC="quickstart-avro-config" ^
  -e CONNECT_OFFSET_STORAGE_TOPIC="quickstart-avro-offsets" ^
  -e CONNECT_STATUS_STORAGE_TOPIC="quickstart-avro-status" ^
  -e CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR=1 ^
  -e CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR=1 ^
  -e CONNECT_STATUS_STORAGE_REPLICATION_FACTOR=1 ^
  -e CONNECT_KEY_CONVERTER="io.confluent.connect.avro.AvroConverter" ^
  -e CONNECT_VALUE_CONVERTER="io.confluent.connect.avro.AvroConverter" ^
  -e CONNECT_KEY_CONVERTER_SCHEMA_REGISTRY_URL="http://localhost:8081" ^
  -e CONNECT_VALUE_CONVERTER_SCHEMA_REGISTRY_URL="http://localhost:8081" ^
  -e CONNECT_INTERNAL_KEY_CONVERTER="org.apache.kafka.connect.json.JsonConverter" ^
  -e CONNECT_INTERNAL_VALUE_CONVERTER="org.apache.kafka.connect.json.JsonConverter" ^
  -e CONNECT_REST_ADVERTISED_HOST_NAME="localhost" ^
  -e CONNECT_LOG4J_ROOT_LOGLEVEL=DEBUG ^
  -e CONNECT_LOG4J_LOGGERS=org.reflections=ERROR ^
  -e CONNECT_PLUGIN_PATH=/usr/share/java,/etc/kafka-connect/jars ^
  -v C:/Users/Owner/Downloads/mysql-connector-java-5.1.39:/tmp/quickstart ^
  -v C:/Users/Owner/Docker/jars:/etc/kafka-connect/jars ^
    %IMAGE%

REM -v /tmp/quickstart/file:/tmp/quickstart 
REM -v /tmp/quickstart/jars:/etc/kafka-connect/jars
