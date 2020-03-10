
set KAFKA_DIR=C:\Apache\kafka_2.11-2.4.0
set KAFKA_BAT=C:\Apache\kafka_2.11-2.4.0\bin\windows

REM Start Kafka Connector

%KAFKA_BAT%\connect-standalone.bat %KAFKA_DIR%\config\connect-standalone.properties %KAFKA_DIR%\config\connect-file-source.properties %KAFKA_DIR%\config\connect-file-sink.properties


