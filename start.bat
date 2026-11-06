@echo off
title FS Market BD - Local Web Server
echo Starting FS Market BD Web Server...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0start-server.ps1"
pause
