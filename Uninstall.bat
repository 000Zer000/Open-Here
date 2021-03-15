@ECHO OFF

SET CWD=%~dp0

ECHO Open-Here Installer, Installs all required registry files, Written by TheOddZer0
ECHO See COPYING for more info
ECHO See the original repo for more details, updates: https://github.com/TheOddZer0/Open-Here/

net session >nul 2>&1
if %errorLevel% == 2 (
    ECHO Failure: We need Administrative permissions to import the registries.
    PAUSE
    EXIT /B 1
)

REG IMPORT "%CWD%Uninstall.reg"

PAUSE

EXIT /B 0