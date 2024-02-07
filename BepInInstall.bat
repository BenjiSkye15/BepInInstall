@echo off
title BepInEx Installer

set /p gamepath= Game Path (where the exe is exe. Ex: "Z:\Steam\steamapps\common\Lethal Company" (include "")): 
set /p exename= .exe Name (Ex: "Lethal Company.exe" (DON'T include "" UNLESS there is a space in the name. Also DON'T include .exe)): 
set /p installforgame= Opened this because you downloaded a mod and needed to install BepInEx? (Y/N): 

echo.
echo Copying...
echo.
mkdir %gamepath%\BepInEx
mkdir %gamepath%\BepInEx\config
mkdir %gamepath%\BepInEx\core
mkdir %gamepath%\BepInEx\plugins
copy BepInInstall\core %gamepath%\BepInEx\core
copy BepInInstall\config %gamepath%\BepInEx\config

if %installforgame%==Y goto :installforgame

echo.
echo Done!
pause
exit

:installforgame
start "install.bat" "-biiSwitch"