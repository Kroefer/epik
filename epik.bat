@echo off
title epik 0.0.2
:::
:::                     __  __       
:::                    |  \|  \      
:::  ______    ______   \$$| $$   __ 
::: /      \  /      \ |  \| $$  /  \
:::|  $$$$$$\|  $$$$$$\| $$| $$_/  $$
:::| $$    $$| $$  | $$| $$| $$   $$ 
:::| $$$$$$$$| $$__/ $$| $$| $$$$$$\ 
::: \$$     \| $$    $$| $$| $$  \$$\
:::  \$$$$$$$| $$$$$$$  \$$ \$$   \$$
:::          | $$                    
:::          | $$                    
:::           \$$                    
:::
:::
::: Version 0.0.2 Alpha
:::  
:start
cls
title epik 0.0.2
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
color a
set choice=
set /p choice=
if '%choice%'=='cmd' goto cc
if '%choice%'=='adb' goto adb
if '%choice%'=='ddos' goto ddos
if '%choice%'=='games' goto games
if '%choice%'=='bat2exe' goto bat2exe
if '%choice%'=='help' goto help
if '%choice%'=='update' goto update
if '%choice%'=='exit' goto exit
if '%choice%'=='secret' goto secret
cls
echo "%choice%" does not exist. Type "help" to view commands.
timeout /t 5 >nul
ECHO.
cls
goto start

:cc
cls
echo.
echo epik 0.0.2
echo type "exit" to exit.
echo.
cd C:\windows\system32
goto cmd

:cmd
title epik 0.0.2 (%cd%)
set /p cmd=%cd% - 

%cmd%
echo.
goto cmd


:adb
cls
cd data
cd adb
adb devices
goto :adbs

:adbs
title epik 0.0.2 (%cd%)
set /p cmd=epik\data\adb - 

%cmd%
echo.
goto adbs


:update
color 4
cls
echo starting updater...
timeout /t 4 /nobreak >nul
cd data
start updater.bat
cls
goto start

:help
cls
echo =============
echo Commands
echo =============
echo cmd - goes into the command line
echo adb - goes into adb (Android debug bridge)
echo games - opens games hub (basically pre installed games)
echo ddos - open the shitty ddos app
echo bat2exe - convert bat files to exe
echo update - check for update (comming soon)
echo exit - exits the app
echo.
echo Press Any key to exit
pause >nul
cls
goto start

:ddos
cd data
start ddos.bat
cls
goto start

:secret
cd data
start secret.bat
exit

:games
color 2
cls
echo starting games hub...
timeout /t 3 /nobreak >nul
cd data
start games.bat
goto start

:bat2exe
cd data
start bat2exe.exe
cls
goto start

:exit
exit

pauseit

pause
