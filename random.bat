@echo off
rem allows variable value update inside for loops
setlocal enabledelayedexpansion

rem count = number of valid files in this folder and sub-folders
set /a count=0
for /r "%~dp0" %%f in (*) do (
  rem don't count these files
  if /i not "%%~nxf"=="%~nx0" if /i not "%%~nxf"=="desktop.ini" if /i not "%%~nxf"=="install.bat" if /i not "%%~nxf"=="uninstall.bat" (
    set /a count+=1
  )
)

rem in case there's no valid files
if %count%==0 (
  echo No valid files found. If you're sure this is a mistake, message me on GitHub
  pause
  exit /b 0
)

rem get random index
set /a "rand=(!RANDOM! + !RANDOM! + !RANDOM!) %% count"

rem open the file at that index
set /a current=0
for /r "%~dp0" %%f in (*) do (
  rem ignore invalid files
  if /i not "%%~nxf"=="%~nx0" if /i not "%%~nxf"=="desktop.ini" if /i not "%%~nxf"=="install.bat" if /i not "%%~nxf"=="uninstall.bat" (
    if !current!==%rand% (
      start "" "%%f"
      exit /b 0
    )
    set /a current+=1
  )
)

rem in case it doesn't find a matching file index (shouldn't be possible)
echo I broke :(
pause
exit /b 1
