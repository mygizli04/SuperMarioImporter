@echo off
@cls

cd %userprofile%\Downloads
del /F /Q course000
dir | findstr .zip
set /p x=Please er the file name : 
"C:\Program Files\7-Zip\7z.exe" x "%x%"
del /F /Q "%userprofile%\Desktop\cemuhook_1121_0565\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
copy "%userprofile%\Downloads\course000" "%userprofile\Desktop\cemuhook_1121_0565\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
PAUSE
