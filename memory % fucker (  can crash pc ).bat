@echo off

:: Display a message box asking for confirmation to start the script
mshta "javascript:alert('Click OK to begin the script. ( you will get 1 warning after clicking ok ) Please note if you run this, you agree that I am not responsible for any damage caused.');close();"

:: Ask the user for confirmation to run the script
echo Do you want to continue the script? ( use at own risk i am not responsible for any harm/damage caused by this script ) (Y/N)
choice /c YN /m "Press Y to continue or N to exit."

:: If the user chooses No, exit the script
if errorlevel 2 exit

:: If the user chooses Yes, continue with the script
:loop
start "" "msedge.exe" "https://www.youtube.com/watch?v=4Giz2CpQZZ0&t"  ; Open the URL in Edge
timeout /t 1 /nobreak > nul  ; Wait for 3 seconds
taskkill /f /im msedge.exe  ; Close Microsoft Edge
timeout /t 1 /nobreak > nul  ; Wait for 5 seconds before opening the link again
goto loop  ; Repeat the process