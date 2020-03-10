set KAFKA_EXEC=C:\Apache\kafka_2.11-2.4.0\bin\windows
set TOPIC=%1

%KAFKA_EXEC%\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic %TOPIC% --from-beginning
