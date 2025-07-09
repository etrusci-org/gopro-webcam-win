# gopro-webcam-win

Just a quick script to use an old *GoPro4 Hero Black* as a webcam on Windows. Only tested in CMD, not PowerShell.

## Requirements

- **ffmpeg.exe**: Find Windows builds [there](https://ffmpeg.org/download.html#build-windows).
- **scp**: Should be pre-installed/enabled on Windows 10+. If not, enable it in the *optional features* in the *Windows settings*.


## Basic usage

1. Adjust configuration in **_conf.cmd**.
2. Run **live.cmd**.
3. After you've stopped **live.cmd** with `CTRL+C`, run **off.cmd**.

## Files

- **_conf.cmd**: Configuration.
- **live.cmd**: Capture image and upload to remote server.
- **off.cmd**: Upload offline image to remote server.
