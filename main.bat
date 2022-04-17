@ECHO OFF
setlocal EnableExtensions DisableDelayedExpansion
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
setlocal enabledelayedexpansion

title BatchToolkit
:mainmenu
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=!ESC![0m
echo   !ESC![94m__ )          ^|          ^|         __ __^|              ^|  ^|    _)  ^|   
echo   __ \    _` ^|  __^|   __^|  __ \         ^|   _ \    _ \   ^|  ^|  /  ^|  __^| 
echo   ^|   ^|  (   ^|  ^|    (     ^| ^| ^|        ^|  (   ^|  (   ^|  ^|    ^<   ^|  ^|   
echo  ____/  \__,_^| \__^| \___^| _^| ^|_^|       _^| \___/  \___/  _^| _^|\_\ _^| \__^| !ESC![0m
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=!ESC![0m
:: set color to strong yellow
echo !ESC![93m
echo [1] Calculator
echo [2] Pinger
echo [3] Spec Checker
:: reset color
echo !ESC![0m
choice /c 123 /n /m Tool: 
if %errorlevel% == 1 echo 1
if %errorlevel% == 2 echo 2
if %errorlevel% == 3 echo 3
pause