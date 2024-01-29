@echo off
mode con: cols=50 lines=15
title epik updater
cls
echo =============
echo epik Updater
echo =============
 ping -n 1 github.com > nul
 
 if %errorlevel% equ 0 (
     echo There is an update available
     start https://github.com/Kroefer/epik
 ) else (
     echo You are not connected to the internet or github website is down
 )
echo Press any key to exit
pause >nul
exit
