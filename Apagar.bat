@echo off

echo 1: Temps en hores
echo 2: Temps en minuts

set /p var=

if %var%==2 goto :min

echo Temps en hores abans d'apagar

set /p hores=

set /a minuts= %hores%*60

:min

if %var%==2 echo Temps (en MINUTS) a esperar abans d'apagar.

if %var%==2 set /p minuts=

set /a segons = (%minuts% * 60)

echo S'apagara en %minuts% minuts


pause

shutdown -s -t %segons%



