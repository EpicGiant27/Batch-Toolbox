@echo off
:symbols
echo / = Divide
echo * = Multiply
echo - = Minus
echo + = Plus
:main
set /p equation=
if equation == goto symbols
set /a ans=%equation%
echo %ans%
pause >nul
goto main