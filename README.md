# gopro-webcam-win

Just a quick script to use an old *GoPro4* as a webcam on Windows. Should work also with other USB video devices.


## Requirements

- **ffmpeg.exe**: Find Windows builds [there](https://ffmpeg.org/download.html#build-windows).
- **scp**: Should be pre-installed/enabled on Windows 10+. If not, enable the *OpenSSH Client* in the *optional Windows features settings*.


## Basic usage

0. Connect camera to the computer with a capture card thingy.
1. Rename **_conf.example.cmd** to **_conf.cmd**, open it with a text editor and adjust the settings inside.
2. Adjust configuration in **_conf.cmd**.
3. Run **live.cmd**.
4. Optionally, after you've stopped **live.cmd** with `CTRL+C`, run **off.cmd**.


## Files

- **_conf.cmd**: Configuration.
- **live.cmd**: Capture image and upload to remote server.
- **off.cmd**: Upload offline image to remote server.
- **live.jpg**: Created by **live.cmd**.
- **offline.jpg**: Used by **off.cmd**.
