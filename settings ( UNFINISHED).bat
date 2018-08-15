@echo off
SETLOCAL EnableDelayedExpansion


:SETTINGS
set presettings=0 && REM 0 for off 1 for on
set levelpath=NULL && REM Replace NULL with the level's file path
set CEMUPATH=NULL && REM Replace NULL with where your Cemu installation is located. ( This path gets used even though presetting might be off. Replace it with "DONT" if you don't want to use it )
:CHECKSETTINGS
if %presettings% == "0" goto CHECKSETTINGS2
if %levelpath% == "NULL" goto NOLEVELPATH
goto CHECKSETTINGS2


:NOLEVELPATH
echo No level path included in the level path setting. Dismissing that setting.
set LEVELPATHINCLUDED == FALSE
goto CHECKSETTINGS3


:CHECKSETTINGS2
if %CEMUPATH% == NULL goto SETTINGSREMINDER
if %CEMUPATH% == DONT goto NOPATH
goto YESPATH

:YESPATH
echo Your Cemu installation is located at %CEMUPATH% .
set PATHINCLUDED == TRUE
goto CHECKSETTINGS3

:CHECKSETTINGS3
if %ZIPLOCATION% == NULL goto SETTINGSREMINDER2
if %ZIPLOCATION% == DONT goto NOPATH3

:NOPATH3
echo Warning: You've disabled auto-locating. You'll need to type the location by hand.
goto BEGINNING

:NOPATH
echo Warning: Cemu path was not in the settings. You'll need to type it by hand.
goto CHECKSETTINGS3

:SETTINGSREMINDER2
echo This batch file has changable settings. Right click and choose edit to view them.
goto NOPATH2

:NOPATH2
echo Warning: No zip file location has been given. Using %userprofile%\Downloads as default.
goto BEGINNING

:SETTINGSREMINDER
echo This batch file has changable settings. Right click and choose edit to view them.
goto NOPATH

:BEGINNING
if %presettings% == 1 goto PRESETTINGS
if %presettings% == 0 goto TESTPRINTZIPS

:PRESETTINGS
if %LEVELPATHINCLUDED% == FALSE goto ASKLEVELPATH
if %PATHINCLUDED% == FALSE goto ASKPATH

:PRINTZIPS
C:
cd %userprofile%\Downloads
dir | findstr .zip

:ASKPATH
set /p levelpath=Please choose the name of the level path : 
