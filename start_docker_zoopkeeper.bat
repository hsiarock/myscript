
rem Start Zookeeper

set ZOOKEEPER_NAME=zookeeper
set ZOOKEEPER_LISTENER_PORT=32181
set ZOOKEEPER_TICK_TIME=2000
set IMAGE=confluentinc/cp-zookeeper:5.4.1
:set IMAGE=confluentinc/cp-zookeeper:latest

docker run -d --net=host --name=%ZOOKEEPER_NAME% -e ZOOKEEPER_CLIENT_PORT=%ZOOKEEPER_LISTENER_PORT% -e ZOOKEEPER_TICK_TIME=%ZOOKEEPER_TICK_TIME% %IMAGE%
