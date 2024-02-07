@REM Sets up the termial. TITLE: [GameName] Mod ([ModName]) Installer
@echo off
title LC Mod (InfSprint) Installer

REM Sets up game path stuff. SET /P {[GameName]path= [GameName] Path (where the exe is): } IF NOT EXIST {%[GameName]path%\BepInEx\plugins goto :BepInInstall}
set /p gamepath= Game Path (where the exe is): 
if NOT EXIST %gamepath%\BepInEx\plugins goto :BepInInstall

REM Copys the mod. COPY: BepInEx\plugins\[ModFile] %[GameName]path%\BepInEx\plugins
echo Copying...
copy BepInEx\plugins\Mod.LC.BenjiSkye15.InfSprint.dll %gamepath%\BepInEx\plugins
echo Done!
pause
exit

:BepInInstall
echo BepInEx not found. Installing...
timeout /NOBREAK 3 >nul
cls
timeout /NOBREAK 3 >nul
start BepInInstall.bat