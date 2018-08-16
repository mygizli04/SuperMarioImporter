@echo off
@cls

:SETTINGS
set installation=%userprofile%\Desktop\cemu
set SearchLocation=%userprofile%\Downloads

cd %SearchLocation%
rmdir /Q course000
dir | findstr .zip
set /p x=Please enter the file name : 
"C:\Program Files\7-Zip\7z.exe" x "%x%"
ren course001 course000
ren course002 course000
ren course003 course000
ren course004 course000
ren course005 course000
ren course006 course000
ren course007 course000
ren course008 course000
ren course009 course000
ren course010 course000
rmdir /Q "%installation%\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
copy "%SearchLocation%\course000" "%installation%\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
PAUSE
exit
