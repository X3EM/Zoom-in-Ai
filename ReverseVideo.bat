@echo off
if "%~1"=="" (
    echo No video file specified.
    echo Please provide the video file as the first parameter.
    pause
    exit /b
)

set ffmpeg_path=ffmpeg.exe

set video_file=%~1
set output_file=reversed_%~n1%~x1

"%ffmpeg_path%" -i "%video_file%" -vf reverse "%output_file%"

echo Video reversal complete. Reversed video saved as %output_file%.
pause
