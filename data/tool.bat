@echo off
echo This will install the required thingys
echo for some games to work.
echo.
echo DO NOT INSTALL IF YOU ALREADY HAVE:
echo Java 17
echo Microsoft .NET Framework 4
echo DirectX 9.0
echo OpenAL
echo Microsoft Visual C++ 2015-2019 Redistributable (x86)
echo Microsoft Visual C++ 2015-2019 Redistributable (x64)
echo Microsoft Visual C++ 2010  x64 Redistributable
echo Microsoft Visual C++ 2010  x86 Redistributable
echo Microsoft XNA Framework Redistributable 4.0
echo.
pause
cls
:start
cd reqs
echo What to install:
echo 1 - Java 17 (Required)
echo 2 - Microsoft .NET Framework 4 (Required)
echo 3 - DirectX 9.0 (Required)
echo 4 - OpenAL (Optional install if u want 3d audio)
echo 5 - Microsoft Visual C++ 2015-2019 Redistributable (x86) (Required)
echo 6 - Microsoft Visual C++ 2015-2019 Redistributable (x64) (Required)
echo 7 - Microsoft Visual C++ 2010  x64 Redistributable (Required)
echo 8 - Microsoft Visual C++ 2010  x86 Redistributable (Required)
echo 9 - Microsoft XNA Framework Redistributable 4.0 (Required)
echo all - Install everything (Required + Optional)
echo exit - exit and dont install anything
set choice=
set /p choice=
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='7' goto 7
if '%choice%'=='8' goto 8
if '%choice%'=='9' goto 9
if '%choice%'=='all' goto all
if '%choice%'=='exit' goto exit

:1
move jdk-17.0.10 C:\Program Files\Java
goto start

:2
start dotNetFx40_Full_setup.exe
goto start

:3
start dxwebsetup.exe
goto start

:4
start oalinst.exe
goto start

:5
start vcredist_2015-2019_x64.exe
goto start

:6
start vcredist_2015-2019_x86.exe
goto start

:7
start vcredist_x64.exe
goto start

:8
start vcredist_x86.exe
goto start

:9
start xnafx40_redist.msi
goto start

:all
move jdk-17.0.10 C:\Program Files\Java
echo java 17 install finish.
echo when youre finished press any key to run the next installer.
pause >nul
cls
start dotNetFx40_Full_setup.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start dxwebsetup.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start oalinst.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start vcredist_2015-2019_x64.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start vcredist_2015-2019_x86.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start vcredist_x64.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start vcredist_x86.exe
echo when youre finished press any key to run the next installer.
pause >nul
cls
start xnafx40_redist.msi
echo Finish
pause
exit

:exit
exit