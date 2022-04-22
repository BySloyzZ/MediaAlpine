@echo off
set /p idStart="Entre l'id du début: "
set /p idEnd="Entre l'id de fin: "

start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 2"

set loopcount=%idEnd%
set /a loopcount=loopcount-%idStart%


:loop
set /a loopdown=loopcount+%idStart%
start "webpage name" "http://media.alpineracing.com/spip.php?page=dldimg&id=%loopdown%&name=jm2112se610.jpg"
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause