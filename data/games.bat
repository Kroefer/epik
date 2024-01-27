@echo off
title epik games hub (basically pre installed games)
color a
:::
::: Available Games:
:::
::: minegame - Minesweeper
:::  
::: am too lazy too add more games ;-;
:::
::: require - install requirements if some games dont work
:::
:start
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
color a
set choice=
set /p choice=
if '%choice%'=='minegame' goto minegame
if '%choice%'=='require' goto tool
cls
echo "%choice%" does not exist.
timeout /t 5 >nul
ECHO.
cls
goto start


:minegame
cd games
cd minegame
start minegame.exe
echo.
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo CHECK YOUR TASKBAR
echo.
pause
exit

:tool
start tool.bat
exit