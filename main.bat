@echo off
chcp 65001
:: colour codes
setlocal EnableExtensions DisableDelayedExpansion
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
setlocal enabledelayedexpansion
:: end of colour codes
:mainmenu
mode con:cols=120 lines=30
cls
title Main Menu; Batch Toolbox
echo !esc![34m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
echo   !esc![94▄▄▄▄·  ▄▄▄· ▄▄▄▄▄ ▄▄·  ▄ .▄    ▄▄▄▄▄            ▄▄▌  ▄▄▄▄·       ▐▄• ▄ 
echo ▐█ ▀█▪▐█ ▀█ •██  ▐█ ▌▪██▪▐█    •██  ▪     ▪     ██•  ▐█ ▀█▪▪      █▌█▌▪
echo ▐█▀▀█▄▄█▀▀█  ▐█.▪██ ▄▄██▀▐█     ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  ▐█▀▀█▄ ▄█▀▄  ·██· 
echo ██▄▪▐█▐█ ▪▐▌ ▐█▌·▐███▌██▌▐▀     ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌██▄▪▐█▐█▌.▐▌▪▐█·█▌
echo ·▀▀▀▀  ▀  ▀  ▀▀▀ ·▀▀▀ ▀▀▀ ·     ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ ·▀▀▀▀  ▀█▄▀▪•▀▀ ▀▀
echo !esc![34m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
:: set color to normal yellow
echo !esc![91m!esc![41m[0] Exit!esc![40m          !esc![95m[1] Clear Temp Files
echo !esc![33m[A] Calculator
echo [B] Pinger
echo [C] Spec Checker
echo [D] Serial Checker
echo [E] Temp Cleaner
echo [F] Clock
:: set color to strong yellow
echo !esc![93m
choice /c abcdef10 /n
if %errorlevel% == 1 (
  goto calculator
)
if %errorlevel% == 2 (
  goto pinger
)
if %errorlevel% == 3 (
  goto specChecker
)
if %errorlevel% == 4 (
  goto hwidChecker
)
if %errorlevel% == 5 (
  goto tempCleaner
)
if %errorlevel% == 6 (
  goto clockInit
)
if %errorlevel% == 7 (
  goto shortTempClean
)
if %errorlevel% == 8 (
  exit
)
:calculator
echo !esc![93m
cls
title Calculator; Batch Toolbox
choice /c 120 /n /m "[1] - Start; [2] - Help; [0] - Go Back"
if %errorlevel% == 1 (
  goto cmain
)
if %errorlevel% == 2 (
  goto chelp
)
if %errorlevel% == 3 (
  goto mainmenu
)
:chelp
echo !esc![93m
echo / = Divide
echo * = Multiply
echo - = Minus
echo + = Plus
echo !esc![4mDue to limitations of batch, the calculator only outputs integers.!esc![0m
call pause
goto calculator
:cmain
cls
echo !esc![33m
set /p equation=Your equation: 
set /a ans=%equation%
echo !esc![96m
echo %ans%
call pause
goto calculator
:pinger
echo !esc![93m
cls
title Pinger; Batch Toolbox
choice /c 120 /n /m "[1] - Start; [2] - Help; [0] - Go Back"
if %errorlevel% == 1 (
  goto pmain
)
if %errorlevel% == 2 (
  goto phelp
)
if %errorlevel% == 3 (
  goto mainmenu
)
:phelp
echo Enter the IP address you want to ping.
echo Enter how many times you want to ping the ip.
call pause
goto pinger
:pmain
cls
set /p ip=IP:
set /p amount=How many times to ping: 
:pping
ping %ip% -n %amount%
call pause
goto pinger
:specchecker
echo !esc![93m
cls
title Spec Checker; Batch Toolbox
choice /c 10 /n /m "[1] - Start; [0] - Go Back
if %errorlevel% == 1 (
  goto smain
)
if %errorlevel% == 2 (
  goto mainmenu
)
:smain
echo !esc![96m
echo Size is in bytes.
echo CPU
wmic cpu get name, maxclockspeed, currentclockspeed
echo GPU
wmic path win32_VideoController get name, adapterram, maxrefreshrate
echo Motherboard
wmic baseboard get product,Manufacturer.
echo RAM
wmic MEMORYCHIP get  DeviceLocator, Capacity, Speed
echo DRIVES
wmic diskdrive get model, size, mediaType
call pause
goto specchecker
:hwidChecker
echo !esc![93m
cls
title Serial Checker; Batch Toolbox
choice /c 10 /n /m "[1] - Drive Serial; [0] - Go Back
if %errorlevel% == 1 (
  goto hdrive
)
if %errorlevel% == 2 (
  goto mainmenu
)
:hdrive
echo !esc![96m
set /p letter = Drive you want to check: 
vol %letter%
call pause
goto hwidChecker
:tempCleaner
echo !esc![93m
cls
title Temp Cleaner; Batch Toolbox
choice /c 1230 /n /m "[1] - Clear Temp Folders; [2] - Clear Temp Folders and Recycle Bin; [3] - Help; [0] - Go Back"
if %errorlevel% == 1 (
  goto tTempFolders
)
if %errorlevel% == 2 (
  goto tTempFoldersAndRecycleBin
)
if %errorlevel% == 3 (
  goto tHelp
)
if %errorlevel% == 4 (
  goto mainmenu
)
:tHelp
echo !esc![96m
echo About
echo This tool clears all of the files in listed directories.
call pause
goto tempCleaner
:tTempFolders
cls
echo !esc![96m
echo Are you sure you want to delete all of the files in the following directories:
echo C:\Users\%username%\AppData\Local\Temp
echo C:\Users\%username%\AppData\Local\Tmp
echo C:\Windows\Temp
echo C:\Temp
choice /n /t 10 /d n
if %errorlevel% == 1 (
  goto tTempFoldersDel
)
if %errorlevel% == 2 (
  goto tempCleaner
)
:tTempFoldersDel
del /S /q C:\Users\%username%\AppData\Local\Temp\*.*
del /S /q C:\Users\%username%\AppData\Local\Tmp\*.*
del /S /q c:\Windows\temp\*.*
del /S /q c:\Temp\*.*
call pause
goto tempCleaner
:tTempFoldersAndRecycleBin
echo !esc![96m
echo Are you sure you want to delete all of the files in the following directories:
echo C:\Users\%username%\AppData\Local\Temp
echo C:\Users\%username%\AppData\Local\Tmp
echo C:\$Recycle.Bin
echo C:\Windows\Temp
echo C:\Temp
choice /n /t 10 /d n
if %errorlevel% == 1 (
  goto tTempFoldersAndRecycleBinDel
)
if %errorlevel% == 2 (
  goto tempCleaner
)
:tTempFoldersAndRecycleBinDel
del /S /q C:\Users\%username%\AppData\Local\Temp\*.*
del /S /q C:\Users\%username%\AppData\Local\Tmp\*.*
del /S /q c:\$Recycle.Bin\*.*
del /S /q c:\Windows\temp\*.*
del /S /q c:\Temp\*.*
call pause
goto tempCleaner
:clockInit
echo !esc![96m
cls
title Clock; Batch Toolbox
mode con:cols=24 lines=16
:clock
echo          .--.
echo     .-._;.--.;_.-.
echo    (^_.'^_..--..^_'.^_)
echo     ^/.' . 60 . '.^\
echo    ^/^/ .      ^/ . ^\^\
echo   ^|; .      ^/   . ^|;
echo   ^|^|45    ()    15^|^|
echo   ^|; .          . ^|;
echo    ^\^\ .        . ^/^/
echo     ^\'.^_' 30 '^_.'^/
echo jgs  '-.^_'--'^_.-'
echo         `""` 
echo %date% ^| %time%
echo [0]; Main Menu
echo !esc![30m
choice /c 01 /n /t 1 /d 1
if %errorlevel% == 1 (
  goto mainmenu
)
if %errorlevel% == 2 (
  goto clock
)
:shortTempClean
choice /n /t 10 /d n /m "Do you want to clear all temp folders? [Y/N]]"
if %errorlevel% == 1 (
  goto shortClear
)
if %errorlevel% == 2 (
  goto mainmenu
)
:shortClear
del /S /q C:\Users\%username%\AppData\Local\Temp\*.*
del /S /q C:\Users\%username%\AppData\Local\Tmp\*.*
del /S /q c:\Windows\temp\*.*
del /S /q c:\Temp\*.*
call pause
goto mainmenu