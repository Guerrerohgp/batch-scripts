@echo off
title PASS-CHAR BY -.: GUERREROHGP :.-
::Coded BY Guerrerohgp
mode con cols=35 lines=10
color f0&if not exist keyboard.exe ((echo.n keyboard.hgp&echo.e 0000 4D 5A 2E 00 01 00 00 00 02 00 00 10 FF FF F0 FF&echo.e 0010 FE FF 00 00 00 01 F0 FF 1C 00 00 00 00 00 00 00
echo.e 0020 B4 08 CD 21 3C 00 75 02 CD 21 B4 4C CD 21&echo.rcx&echo.002E&echo.w0&echo.q&echo.)>keyboard.hgp&type keyboard.hgp|debug&ren keyboard.hgp keyboard.exe)>nul 2>&1
:ini
cls&echo.ERRORLEVEL:%errorlevel%     LETRA:%let% &echo.&echo.PASS:%vart%
echo.CHAR:%char%
keyboard
:fr
if "[%errorlevel%]"=="[32]" (set "let=SPACE"&set "vart=%vart% "&set "char=%char%*"&goto:ini)
if "[%errorlevel%]"=="[8]" (set "let=BACKSPACE"&if "[%char%]"=="[]" (goto ini) else (set "char=%char:~0,-1%")
if "[%vart%]"=="[]" (goto ini) else (set "vart=%vart:~0,-1%")
goto ini)
if "[%errorlevel%]"=="[27]" exit
set nums=48&for %%a in ( 0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 
a b c d e f g h i j k l m n o p q r s t u v w x y z) do (set let=%%a&call:nnn)
set let=UNKNOWN&goto:ini
:nnn
if not "[%errorlevel%]"=="[%nums%]" (if "[%let%]"=="[9]" set nums=64
if "[%let%]"=="[Z]" set nums=96
set /a nums+=1&goto:eof)
set vart=%vart%%let%
set "char=%char%*"
goto:ini
