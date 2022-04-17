@echo OFF
set numlevel = 1
set num1 = 0
set num2 = 0
set num3 = 0
set num4 = 0
set num5 = 0
set num6 = 0
set num7 = 0
set num8 = 0
set num9 = 0
:display
cls
echo --------
echo ^|%num1%%num2%%num3%%num4%%num5%%num6%%num7%%nu81%%num9%^|
echo --------
echo %numlevel%
choice /c 123456789 /n
if %errorlevel% == 1 goto 1
if %errorlevel% == 2 goto 2
if %errorlevel% == 3 goto 3
if %errorlevel% == 4 goto 4
if %errorlevel% == 5 goto 5
if %errorlevel% == 6 goto 6
if %errorlevel% == 7 goto 7
if %errorlevel% == 8 goto 8
if %errorlevel% == 9 goto 9
:1
:: use this so i can copy the code lol
set currentnum = 1
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:2
set currentnum = 2
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:3
set currentnum = 3
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:4
set currentnum = 4
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:5
set currentnum = 5
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:6
set currentnum = 6
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:7
set currentnum = 7
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:8
set currentnum = 8
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display
:9
set currentnum = 9
if %numlevel% == 1 set %num1% = %currentnum%
if %numlevel% == 2 set %num2% = %currentnum%
if %numlevel% == 3 set %num3% = %currentnum%
if %numlevel% == 4 set %num4% = %currentnum%
if %numlevel% == 5 set %num5% = %currentnum%
if %numlevel% == 6 set %num6% = %currentnum%
if %numlevel% == 7 set %num7% = %currentnum%
if %numlevel% == 8 set %num8% = %currentnum%
if %numlevel% == 9 set %num9% = %currentnum%
set /a numlevel=numlevel+1
goto :display