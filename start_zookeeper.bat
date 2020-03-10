
set KAFKA_DIR=C:\Apache\kafka_2.11-2.4.0

REM Start zookeeper

%KAFKA_DIR%\bin\windows\zookeeper-server-start.bat %KAFKA_DIR%\config\zookeeper.properties

