@echo off
::^| nombre:  Efecto Codificador-Decodificador ó                       ^                           
                   Effect  Encrypt-Decrypt
::^| autor:     Guerrerohgp                
::^| fecha:     20/08/2009
::^| codigo totalmente crado para 
::^| diversas formas de uso, 
::^| desde este efecto hasta 
::^| la imaginacion de cada uno.
::^| Uso libre, no cambiar autor.

title Efecto Codificador-Decodificador -HGP-
setlocal enabledelayedexpansion
color a&mode con cols=44 lines=10
:hgp
set "cnt=9"&set "c=%random:~-2%"
cls&echo.&set /p "cod=Su frase: "
if not defined cod goto:hgp
set "cod=%cod: =_%"
cls&call:crypt
call:decrypt
:crypt
for %%* in (a b c d e f g h i j k l m n o p q r s t u v w x y z _) do (set "ln=%%*"&call:enc)
echo.&echo.cifrado :  &echo.
echo.    %cod2%
echo.&echo.         Press Key To Decrypt...
pause>nul
goto:eof
:enc
set "%cnt%=%ln%"
set /a "cc=%cnt%+%c%"
set "cod=!cod:%ln%=%cc% !"
set "cod2=%cod%"
set "cod2=!cod2: =!"
set "cod2=!cod2:_= !"
echo.%cod2%
ping -n 2 localhost>nul
set /a "cnt+=1"
cls&goto:eof
:decrypt
for %%_ in (%cod%) do (set "dc=%%_"&call:ds)
cls&set "cod2=!cod2:_= !"
echo.&echo.         Listo descifrado: &echo.
echo.    %cod2%
pause>nul
goto:hgp
:ds
cls&set /a "fn=%dc%-%c%"
set "ll=!%fn%!"
set "cod=!cod:%dc%=%ll%!"
set "cod2=%cod%
set "cod2=%cod2: =%
set "cod2=!cod2:_= !"
echo.%cod2%
ping -n 2 localhost>nul
goto:eof
