@echo off
:setup
mode 70, 20
echo stiamo installando i pacchetti necessari...
cd C:\
mkdir file_batch
cd C:\file_batch\Menu
cd C:\users\win\Desktop\Contatore
copy /b "win\OneDrive\Desktop\Contatore\clicker_icon_129311.ico" "C:\file_batch"
echo in quale menu vuoi andare?
echo.
echo [1] Menu Base
echo [2] Menu + Discord
echo [3] Menu + Browser
echo [4] Menu + Ip
echo [5] Menu + Tutto
set /p scelta=: 
if "%scelta%" == "1" goto menubase
if "%scelta%" == "2" goto menuds
if "%scelta%" == "3" goto menubro
if "%scelta%" == "4" goto menuip
if "%scelta%" == "5" goto menuall

:menubase
cd C:\file_batch\Menu
echo menu>menu_principale.txt
del Apri_discord.txt
del Apri_browser.txt
del Vedi_ip.txt
del Tutto.txt
goto fine

:menuds
cd C:\file_batch\Menu
echo discord>Apri_discord.txt
del menu_principale.txt
del Apri_browser.txt
del Vedi_ip.txt
del Tutto.txt
goto fine

:menubro
cd C:\file_batch\Menu
echo browser>Apri_browser.txt
del Apri_discord.txt
del menu_principale.txt
del Vedi_ip.txt
del Tutto.txt
goto fine

:menuip
cd C:\file_batch\Menu
echo ip>Vedi_ip.txt
del Apri_discord.txt
del Apri_browser.txt
del menu_principale.txt
del Tutto.txt
goto fine

:menuall
cd C:\file_batch\Menu
echo tutto>Tutto.txt
del Apri_discord.txt
del Apri_browser.txt
del Vedi_ip.txt
del menu_principale.txt
goto fine

:fine 
cls
Title Bene! Hai scelto correttamente il tuo menu!
echo hai finito il setup dei menu!
echo adesso chiudo il file (premi enter)
pause > nul
exit
