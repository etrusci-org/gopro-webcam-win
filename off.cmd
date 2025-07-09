@echo off


call .\_conf.cmd


echo Uploading image ...

scp "%_OFFLINE_IMAGE_FILE%" "%_REMOTE_IMAGE_FILE%"

timeout /t 5 /nobreak > nul
