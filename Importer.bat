@echo off
@cls

:SETTINGS
set installation=%userprofile%\Desktop\cemu
set SearchLocation=%userprofile%\Downloads

cd %SearchLocation%
del /F /Q course000
dir | findstr .zip
set /p x=Please er the file name : 
"C:\Program Files\7-Zip\7z.exe" x "%x%"
del /F /Q "%installation%\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
copy "%SearchLocation%\course000" "%installation%\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
PAUSE
