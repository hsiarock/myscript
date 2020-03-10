
rem Start Kafka Schema Registry

set SCHEMA_NAME=schema-registry
set SCHEMA_REGISTRY_STORE_CONNECT_URL=localhost:32181
set SCHEMA_REGISTRY_HOST=localhost
set SCHEMA_REGISTRY_LISTENERS=http://localhost:8081
set IMAGE=confluentinc/cp-schema-registry:5.4.1
:set IMAGE=confluentinc/cp-schema-registry:latest

docker run -d --net=host --name=%SCHEMA_NAME% -e SCHEMA_REGISTRY_KAFKASTORE_CONNECTION_URL=%SCHEMA_REGISTRY_STORE_CONNECT_URL% -e SCHEMA_REGISTRY_HOST_NAME=%SCHEMA_REGISTRY_HOST% -e SCHEMA_REGISTRY_LISTENERS=%SCHEMA_REGISTRY_LISTENERS% %IMAGE%

