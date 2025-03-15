@echo off
:loop
taskkill /F /IM msedge.exe
timeout /t 3 /nobreak > nul
goto loop
