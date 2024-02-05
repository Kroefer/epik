:: made by kroefer
:: yes, this was made on my school pc.
@echo off
set version=0.0.3
if '%version%'=='0.0.1' goto update
if '%version%'=='0.0.2' goto update
if '%version%'=='0.0.3' goto launch
if '%version%'=='0.0.4' goto uhohwtf
:launch
title epik is updated! (%version%)
timeout 2 /nobreak >nul
title launching epik...
timeout 2 /nobreak >nul
title epik %version%
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
::: Version 0.0.3 Alpha
:::  
:start
cls
title epik %version%
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
if '%choice%'=='gui' goto gui
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
echo epik version: %version%
echo epik cmd version: 0.0.1
echo type "exit" to exit.
echo.
cd C:\windows\system32
goto cmd

:cmd
title epik %version% (%cd%)
set /p cmd=%cd% - 

%cmd%
echo.
goto cmd


:adb
cls
echo epik version: %version%
echo.
cd data
cd adb
adb devices
goto :adbs

:adbs
title epik adb 0.0.1 (%cd%)
set /p cmd=epik\data\adb - 

%cmd%
echo.
goto adbs


:update
cls
color 4
=======
update
=======
echo You are running version %version% of epik!
if '%version%'=='0.0.1' goto yess
if '%version%'=='0.0.2' goto yess
if '%version%'=='0.0.3' goto nooo
:yess
echo This version of epik is outdated!
echo please get a newer version from
echo https://github.com/kroefer/epik
pause
exit
:nooo
echo this version of epik is up to date
pause
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
echo gui - open the new epik GUI app (veri cool)
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

:gui
cd data
cd gui
start gui.bat
cls
goto start

:exit
exit

:outdated
cls
echo you are running an old version of epik!
echo please update at https://github.com/kroefer/epik
echo.
echo you can disable this popup by deleting line 3 in "epik.bat"
pause >nul
exit

:uhohwtf
echo how tf did u get 0.0.4
timeout 2 /nobreak >nul
goto start
