

docker run -d \
	  --name=quickstart-mysql \
	  --net=host \
	  -e MYSQL_ROOT_PASSWORD=confluent \
	  -e MYSQL_USER=confluent \
	  -e MYSQL_PASSWORD=confluent \
	  -e MYSQL_DATABASE=connect_test \
	  mysql
