@echo off
rem allows variable value update inside for loops
setlocal enabledelayedexpansion

rem count = number of files in this dir (including this file)
set /a count=0
for /r "%~dp0" %%f in (*) do (
  rem don't count this file or desktop.ini
  if /i not "%%~nxf"=="%~nx0" if /i not "%%~nxf"=="desktop.ini" (
    set /a count+=1
  )
)

rem in case there's no valid files
if %count%==0 (
  echo No valid files found. If you're sure this is a mistake, message me on GitHub
  pause
  exit /b 0
)

rem in case it picks this file or desktop.ini
:tryAgain

rem get random index
set /a "rand=(%RANDOM% %% count)"

rem open the file at that index
set /a current=0
for /r "%~dp0" %%f in (*) do (
  if !current!==%rand% (
    rem check against this file or desktop.ini
    if /i "%%~nxf"=="%~nx0" if /i "%%~nxf"=="desktop.ini" (
      goto :tryAgain
    )
    start "" "%%f"
    exit /b 0
  )

  rem only ++ current if it's on a valid file
  rem ensures all files are reachable since only valid files were counted
  if /i not "%%~nxf"=="%~nx0" if /i not "%%~nxf"=="desktop.ini" (
    set /a current+=1
  )
)

rem in case it doesn't find a matching file index
exit /b 1
