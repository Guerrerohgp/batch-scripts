@ECHO OFF
seTlocaL enabledelayedexpansioN
TiTle SecurE LeveL HGP&modE coN colS=41 lineS=10
coloR a

::By Guerrerohgp
::Secure level
::Este script esta a libre uso, BSD.
::no cambiar autor xD.

:inI
seT "pass="&seT "cnT="
cls&seT/p "pass=Tu Clave: "
cls&if noT defined pass goTo inI

:Len
seT/a "cnT+=1"
seT "pass2=!pass:~0,%cnT%!"
if "%pass2%" neq "%pass%" goTo:Len

if %cnT% lss 6 (echo.La clave debe tener minimo 6 caracteres&pause>nul&goTO:inI)
seT "min="&foR %%j in (a,b,c,d,e,f,g,h,i,j,k,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (seT "le=%%j"&call:conp min)
seT "May="&foR %%i in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do ( seT "le=%%i"&call:conp May)
seT "num="&foR %%h in (1,2,3,4,5,6,7,8,9,0) do (seT "le=%%h"&call:conp num)

seT "niv=%min%%May%%num%"
echO.            Nivel de Seguridad         
echO.              1           2            3
echO. _______________________________________&echO. %niv%
pausE>nul
goTO:inI

:conp
foR /l %%k in (0,1,!cnT!) do (seT "sec=!pass2:~%%k,1!"
if "!sec!" equ "!le!" set "%1=²²²²²²²²²²²²²")
goTO:eoF
