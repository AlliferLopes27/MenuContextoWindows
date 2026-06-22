@echo off
title Ativar Menu de Contexto Classico - Windows 11

echo.
echo ==========================================
echo   ATIVANDO MENU DE CONTEXTO CLASSICO
echo ==========================================

echo.
echo Aplicando configuracao...

reg add "HKCU\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /f

echo.
echo Reiniciando o Explorador do Windows...

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo Operacao concluida com sucesso!
pause