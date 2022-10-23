@ECHO OFF
:: colour codes
setlocal EnableExtensions DisableDelayedExpansion
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
setlocal enabledelayedexpansion
:: end of colour codes
:mainmenu
cls
title Main Menu; Batch Toolbox
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo   !ESC![94m__ )          ^|          ^|         __ __^|              ^|  ^|    _)  ^|   
echo   __ \    _` ^|  __^|   __^|  __ \         ^|   _ \    _ \   ^|  ^|  /  ^|  __^| 
echo   ^|   ^|  (   ^|  ^|    (     ^| ^| ^|        ^|  (   ^|  (   ^|  ^|    ^<   ^|  ^|   
echo  ____/  \__,_^| \__^| \___^| _^| ^|_^|       _^| \___/  \___/  _^| _^|\_\ _^| \__^|
echo !ESC![34m-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
:: set color to normal yellow
echo !ESC![33m
echo [1] Calculator
echo [2] Pinger
echo [3] Spec Checker
echo [4] Serial Checker
echo [5] Temp Cleaner
:: set color to strong yellow
echo !ESC![93m
choice /c 12345 /n
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
:calculator
cls
title Calculator; Batch Toolbox
echo !ESC![93m
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
echo !ESC![93m
echo / = Divide
echo * = Multiply
echo - = Minus
echo + = Plus
echo !ESC![4mDue to limitations of batch, the calculator only outputs integers.!ESC![0m
call pause
goto calculator
:cmain
cls
echo !ESC![33m
set /p equation=Your equation: 
set /a ans=%equation%
echo !ESC![96m
echo %ans%
call pause
goto calculator
:pinger
cls
title Pinger; Batch Toolbox
echo !ESC![93m
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
:pmain
set /p ip=
set /p count=
:pping
ping %ip% -n %count%
call pause
goto pinger
:phelp
echo Enter the IP address you want to ping.
echo Enter how many times you want to ping the ip.
call pause
goto pinger
:specchecker
cls
title Spec Checker; Batch Toolbox
echo !ESC![93m
choice /c 10 /n /m "[1] - Start; [0] - Go Back
if %errorlevel% == 1 (
  goto smain
)
if %errorlevel% == 2 (
  goto mainmenu
)
:smain
echo !ESC![96m
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
cls
title Serial Checker; Batch Toolbox
echo !ESC![93m
choice /c 10 /n /m "[1] - Drive Serial; [0] - Go Back
if %errorlevel% == 1 (
  goto hdrive
)
if %errorlevel% == 2 (
  goto mainmenu
)
:hdrive
echo !ESC![96m
set /p letter = Drive you want to check: 
vol %letter%
call pause
goto hwidChecker
:tempCleaner
cls
title Temp Cleaner; Batch Toolbox
echo !ESC![93m
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
:tTempFolders
cls
echo !ESC![96m
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
echo !ESC![96m
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
:tHelp
echo !ESC![96m
echo About
echo This tool clears all of the files in listed directories.
call pause
goto tempCleaner