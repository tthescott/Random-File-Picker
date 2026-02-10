@echo off
setlocal enabledelayedexpansion

rem recursively loop through all sub-folders
for /r "%~dp0" %%D in (.) do (
  if exist "%%~fD\random.bat" (
    echo Deleting random.bat from "%%~nxD" ...
    del /f /q "%%~fD\random.bat"
  )
)

echo Done!
pause
exit /b 0
