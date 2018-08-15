@echo off
@cls

copy "%userprofile%\pkunzip" "%userprofile\Downloads"
cd %userprofile%\Downloads
del course000
dir | findstr .zip
set /p x=Please enter the file name : 
"C:\Program Files\7-Zip\7z.exe" x "%x%"
del "C:\Users\bero\Desktop\cemuhook_1121_0565\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
copy "%userprofile%\Downloads\course000" "C:\Users\bero\Desktop\cemuhook_1121_0565\mlc01\usr\save\00050000\1018dc00\user\80000001\course000"
PAUSE