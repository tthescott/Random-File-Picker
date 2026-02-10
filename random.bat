@echo off
rem allows variable value update inside for loops
setlocal enabledelayedexpansion

rem count = number of files in this dir (including this file)
set /a count=0
for %%f in ("%~dp0*") do (
  set /a count+=1
)

rem in case it picks this file
:tryAgain

rem get random index
set /a "rand=(%RANDOM% %% count)"

rem find that index file and open it
set /a current=0
for %%f in ("%~dp0*") do (
  if !current!==%rand% (
    if /i "%%~xf"==".bat" (
      goto :tryAgain
    )
    start "" "%%f"
    exit /b 0
  )
  set /a current+=1
)

rem in case it doesn't find a matching file index
exit /b 1
