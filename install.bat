@echo off
setlocal enabledelayedexpansion

rem check for random.bat
if not exist "%~dp0random.bat" (
  echo You need to copy random.bat into this folder first
  pause
  exit /b 0
)

rem recursively loop through all sub-folders
for /r "%~dp0" %%D in (.) do (
  echo Copying random.bat into "%%~nxD" ...
  copy /y "%~dp0random.bat" "%%~fD\"
)

echo Done!
pause
exit /b 0
