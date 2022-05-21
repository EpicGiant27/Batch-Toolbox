@ECHO OFF
setlocal EnableExtensions DisableDelayedExpansion
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
setlocal enabledelayedexpansion

title Batch ToolKit
:mainmenu
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=!ESC![0m
echo   !ESC![94m__ )          ^|          ^|         __ __^|              ^|  ^|    _)  ^|   
echo   __ \    _` ^|  __^|   __^|  __ \         ^|   _ \    _ \   ^|  ^|  /  ^|  __^| 
echo   ^|   ^|  (   ^|  ^|    (     ^| ^| ^|        ^|  (   ^|  (   ^|  ^|    ^<   ^|  ^|   
echo  ____/  \__,_^| \__^| \___^| _^| ^|_^|       _^| \___/  \___/  _^| _^|\_\ _^| \__^| !ESC![0m
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=!ESC![0m
:: set color to normal yellow
echo !ESC![33m
echo [1] Calculator
echo [2] Pinger
echo [3] Spec Checker
:: set color to strong yellow
echo !ESC![93m
choice /C 123
if %errorlevel% == 1 (
  goto calculator
)
if %errorlevel% == 2 (
  goto pinger
)
if %errorlevel% == 3 (
  goto specChecker
)
:calculator
:cmain
cls
echo !ESC![93m
echo / = Divide
echo * = Multiply
echo - = Minus
echo + = Plus
echo !ESC![4mDue to limitations of batch, the calculator only outputs integers.!ESC![0m
echo !ESC![93m
echo This is due to the fact that "/set a %yourvariablename%=%yourequation%" (the method for maths in batch) only outputs integers.
echo Sorry.
echo !ESC![33m
set /p equation=
set /a ans=%equation%
echo !ESC![96m
echo %ans%
call pause
goto cmain