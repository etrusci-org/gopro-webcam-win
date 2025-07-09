@echo off


call .\_conf.cmd


:loopstart

cls

echo Capturing image ...

%_FFMPEG_EXE% ^
    -hide_banner ^
    -loglevel error ^
    -y ^
    -f dshow ^
    -i video="%_CAPTURE_DEVICE_NAME%" ^
    -video_size "%_CAPTURE_WIDTH%x%_CAPTURE_HEIGHT%" ^
    -vf "scale=%_CAPTURE_WIDTH%:%_CAPTURE_HEIGHT%" ^
    -framerate 1 ^
    -vframes 1 "%_LIVE_IMAGE_FILE%"

echo Uploading image ...

scp "%_LIVE_IMAGE_FILE%" "%_REMOTE_IMAGE_FILE%"

timeout /t %_CAPTURE_INTERVAL% /nobreak

goto loopstart
