set KAFKA_EXEC=C:\Apache\kafka_2.11-2.4.0\bin\windows
set TOPIC=%1

%KAFKA_EXEC%\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic %TOPIC%
