@echo on

if "%~1"=="" (
    echo No video files specified.
    echo Please provide the video files as parameters.
    pause
    exit /b
)

set ffmpeg_path=C:\Users\Serge\Downloads\ffmpeg\bin\ffmpeg.exe
set count=1

for %%I in (%*) do (
    set video_file=%%I
    set output_file=reversed_!count!_%%~nI%%~xI
    start "" "%ffmpeg_path%" -i "%%I" -vf reverse -metadata handler_name= -map_metadata -1 "!output_file!"
    set /a count+=1
)

echo Video reversal process started for all files.
pause
