:: made by kroefer
:: i luv linux
@echo off
:start
cls
echo warning: epik is untested on linux and will not recieve support
echo second warning: the linux release is based of an older version
echo of epik, and may have some broken things like:
echo - Non working commands
echo - Random crashes
echo - Broken stuffs
title epik 0.0.3w
echo epik
echo.
title epik 0.0.3w
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
echo epik version: 0.0.3w
echo type "exit" to exit.
echo.
goto cmd

:cmd
title epik 0.0.3w (%cd%)
set /p cmd=%cd% - 

%cmd%
echo.
goto cmd


:adb
cls
echo epik version: 0.0.3w
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
echo =======
echo update
echo =======
echo updates cannot be checked on linux.
echo sorry
pause
cls
goto start

:help
cls
echo =============
echo Commands
echo =============
echo cmd - goes into the command line
echo adb - goes into adb 
echo games - opens games hub 
echo ddos - open the shitty ddos app 
echo bat2exe - convert bat files to exe
echo update - check for update 
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
