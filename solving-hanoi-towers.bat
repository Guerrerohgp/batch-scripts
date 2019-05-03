@echo off
setlocal enabledelayedexpansion
:::::::::::::::::::::::::::::::::::::::::
::Script Para Resolver Torres de Hanoi.::
::Creado por Hugo Guerrero (Guerrerohgp):
:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::
::Script to solve Hanoi Towers::
::   Created By Guerrerohgp   ::
::           2011             ::
::::::::::::::::::::::::::::::::
:ini
        set/p "cantidad=Ingrese el numero de discos en la torre: "
        if not defined cantidad goto:ini
        if !cantidad! lss 0 goto:ini
        call:algoritmoHanoi !cantidad! Torre_1 Torre_2 Torre_3
        pause>nul
exit
 
 
 
:algoritmoHanoi
        setlocal
                if "%1" equ "0" goto:eof
                set/a "cnt=%1-1"
                call:algoritmoHanoi !cnt! % class="re2">2 %4 %3
                echo.Mover disco %1 de %2 a %4
                call:algoritmoHanoi !cnt! % class="re2">3 %2 %4
        endlocal
goto:eof
