@echo off
title Restaurar Menu de Contexto Padrao - Windows 11

echo.
echo ==========================================
echo   RESTAURANDO MENU DE CONTEXTO PADRAO
echo ==========================================

echo.
echo Removendo configuracao...

reg delete "HKCU\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f

echo.
echo Reiniciando o Explorador do Windows...

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo Operacao concluida com sucesso!
pause