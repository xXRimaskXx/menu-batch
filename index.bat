@echo off
:start
mode 70, 20
title Seleziona
echo ...
echo.
echo Quale menu hai installato?
echo [1] Menu base [Inserito]
echo [2] Menu + Discord [inserito]
echo [3] Menu + Browser [inserito]
echo [4] Menu + ip [insserito]
echo [5] Menu + Tutto [nserito]
set /p nuovo=: 
if "%nuovo%" == "1" goto provamenu 
if "%nuovo%" == "2" goto provads
if "%nuovo%" == "3" goto provabrow
if "%nuovo%" == "4" goto provaipp
if "%nuovo%" == "5" goto provamenututto

:provamenututto
if exist "C:\file_batch\Menu\Tutto.txt" goto menututto
if not exist "C:\file_batch\Menu\Tutto.txt" goto errore

:provaipp
if exist "C:\file_batch\Menu\Vedi_ip.txt" goto ipp
if not exist "C:\file_batch\Menu\Vedi_ip.txt" goto errore

:ipp
cls 
Title Menu Ip
mode 70, 20
echo Bene, Hai installato il menu con l'ip
echo premi enter per andare avanti
pause > nul 
goto menuip

:provabrow
if exist "C:\file_batch\Menu\Apri_browser.txt" goto brow
if not exist "C:\file_batch\Menu\Apri_browser.txt" goto errore

:brow
cls 
Title Menu Browser
mode 70, 20
echo Bene, Hai installato il menu con Browser
echo premi enter per andare avanti
pause > nul 
goto menubro

:provads
if exist "C:\file_batch\Menu\Apri_discord.txt" goto ds
if not exist "C:\file_batch\Menu\Apri_browser.txt" goto errore

:ds
title Discord 
cls
echo Bene hai scelto Il menu con discord!
echo premi enter per far uscire il menu!
pause > nul
goto menuds

:errore
Title Errore 404
mode 70, 20
echo Error 404
echo PrImA dI eSeGuIrE QuEsTo FiLe InStAlLa iL sEtUp (PrEmI eNtEr)
pause > nul
goto start

:provamenu
if exist "C:\file_batch\Menu\menu_principale.txt" goto menu
if not exist "C:\file_batch\Menu\menu_principale.txt" goto errore

:menu
title Menu
mode 70, 20
echo Benvenuto! Cosa vuoi fare?
echo.
echo [1] Attivare l'autoclicker
echo [2] Attivare il contatore di click
echo [3] Impostazioni
echo.
set /p scelta=: 
if "%scelta%" == "1" goto autoclicker
if "%scelta%" == "2" goto contatore
if "%scelta%" == "3" goto impostazioni

:autoclicker
title autoclicker
mode 60, 15
cls
echo sei sicuro di attivare l'autoclicker?
echo [1] Si
echo [2] No
set /p bella=: 
if "%bella%" == "1" goto inizioautoclicker
if "%bella%" == "2" goto start

:inizioautoclicker
echo Adesso ti attivo l'autoclicker (premi Enter)
pause > nul
cd "C:\Users\win\OneDrive\Desktop\Giochi\autoclicker"
"autoclicker"
echo quando hai finito premi Enter
pause > nul
goto start

:contatore
mode 60, 15
title contatore
echo vuoi attivare il contatore di click?
echo.
echo [1] Si
echo [2] No
set /p contatore=: 
if "%contatore%" == "1" goto iniziareclick
if "%contatore%" == "2" goto start

:iniziareclick
echo adesso ti creo il contatore (premi enter)
pause > nul
explorer https://www.arealme.com/click-speed-test/it/
cls
echo adesso ti riporto al menu (premi enter)
pause > nul
goto start

:impostazioni
title impostazioni
mode 60, 15
cls
echo ===============================
echo \  Per uscire scrivi back     /
echo /  File creato da Rimask      \
echo \ ==========================  /
echo /                             \
echo \  [1] Info                   /
echo /                             \
echo \  [2]  +/- Modalita'         /
echo /                             \
echo \  [3] Crediti                /
echo /                             \
echo ===============================
set /p impo=: 
if "%impo%" == "1" goto info
if "%impo%" == "2" goto aggiungi
if "%impo%" == "3" goto crediti
if "%impo%" == "back" goto menu

:aggiungi
title aggiungi
mode 60, 15
echo cosa vuoi aggiungere?
echo.
echo [1] Apri discord
echo [2] Apri il tuo browser
echo [3] Vedere il tuo ip
echo [4] Tutte e tre
set /p agg=: 
if "%agg%" == "1" goto menuds
if "%agg%" == "2" goto menubro
if "%agg%" == "3" goto menuip
if "%agg%" == "4" goto menututto

:menuds
cls
title Menu-Ds
echo [1] Attivare l'autoclicker
echo [2] Attivare il contatore di click
echo [3] Impostazioni
echo [4] Apri ds
echo.
set /p scelta=: 
if "%scelta%" == "1" goto autoclicker
if "%scelta%" == "2" goto contatore
if "%scelta%" == "3" goto impostazionids
if "%scelta%" == "4" goto discord

:discord
echo adesso ti apro discord (premi enter)
cd "C:\Users\win\AppData\Local\Discord\app-1.0.9006"
"discord.exe"
cls
echo quando hai finito premi enter
pause > nul 
goto menuds


:impostazionids
title impostazioni
mode 60, 15
cls
echo ===============================
echo \  Per uscire scrivi back     /
echo /  File creato da Rimask      \
echo \ ==========================  /
echo /                             \
echo \  [1] Info                   /
echo /                             \
echo \  [2]  +/- Modalita'         /
echo /                             \
echo \  [3] Crediti                /
echo /                             \
echo ===============================
set /p impo=: 
if "%impo%" == "1" goto info
if "%impo%" == "2" goto aggiungids
if "%impo%" == "3" goto crediti
if "%impo%" == "back" goto menuds

:aggiungids
title Segreto...
mode 60, 15
echo cosa vuoi aggiungere?
echo.
echo [1] Apri discord [Gia inserito]
echo [2] Apri il tuo browser
echo [3] Vedere il tuo ip
echo [4] Tutte e tre
set /p agg=: 
if "%agg%" == "1" goto giads
if "%agg%" == "2" goto menubro
if "%agg%" == "3" goto menuip
if "%agg%" == "4" goto menuall

:giads
title Errore
cls 
echo hai gia' installatto il menu con discord
echo premi enter per andare dove eri prima
pause > nul
goto impostazionids

:menubro
title Menu
mode 70, 20
echo Benvenuto! Cosa vuoi fare?
echo.
echo [1] Attivare l'autoclicker
echo [2] Attivare il contatore di click
echo [3] Impostazioni
echo [4] Apri il tuo browser
echo.
set /p browser=: 
if "%browser%" == "1" goto autoclicker
if "%browser%" == "2" goto contatore
if "%browser%" == "3" goto impostazionibro
if "%browser%" == "4" goto browser

:browser
echo Adesso ti apro il tuo browser
echo Premi enter
pause > nul
explorer "https://www.youtube.com"
echo quando hai finito premi enter
pause > nul
goto menubro

:impostazionibro
title impostazioni
mode 60, 15
cls
echo ===============================
echo \  Per uscire scrivi back     /
echo /  File creato da Rimask      \
echo \ ==========================  /
echo /                             \
echo \  [1] Info                   /
echo /                             \
echo \  [2]  +/- Modalita'         /
echo /                             \
echo \  [3] Crediti                /
echo /                             \
echo ===============================
set /p impo=: 
if "%impo%" == "1" goto info
if "%impo%" == "2" goto aggiungibro
if "%impo%" == "3" goto crediti
if "%impo%" == "back" goto menubro

:aggiungibro
title Segreto...
mode 60, 15
echo cosa vuoi aggiungere?
echo.
echo [1] Apri discord 
echo [2] Apri il tuo browser [Gia' inserito]
echo [3] Vedere il tuo ip
echo [4] Tutte e tre
set /p agg=: 
if "%agg%" == "1" goto menuds
if "%agg%" == "2" goto giabro
if "%agg%" == "3" goto menuip
if "%agg%" == "4" goto menuall

:giabro
cls
title Errore
echo hai gia' inserito il menu browser
echo adesso ti mando dove eri prima
pause > nul 
goto impostazionibro

:menuip
title Menu
mode 70, 20
echo Benvenuto! Cosa vuoi fare?
echo.
echo [1] Attivare l'autoclicker
echo [2] Attivare il contatore di click
echo [3] Impostazioni
echo [4] Vedi il tuo ip
echo.
set /p ippp=: 
if "%ippp%" == "1" goto autoclicker
if "%ippp%" == "2" goto contatore
if "%ippp%" == "3" goto impostazioniip
if "%ippp%" == "4" goto viewip

:viewip
cls
echo Adesso ti faccio vedere il tuo ip (premi enter)
pause > nul
@ipconfig/all | find "Subnet Mask"
@ipconfig/all | find "IPv4"
@ipconfig/all | find "Default Gateway"
@ipconfig/all | find "Host Name"
echo quando hai finito premi qualcosa
pause > nul
goto menuip

:impostazioniip
title impostazioni
mode 60, 15
cls
echo ===============================
echo \  Per uscire scrivi back     /
echo /  File creato da Rimask      \
echo \ ==========================  /
echo /                             \
echo \  [1] Info                   /
echo /                             \
echo \  [2]  +/- Modalita'         /
echo /                             \
echo \  [3] Crediti                /
echo /                             \
echo ===============================
set /p impo=: 
if "%impo%" == "1" goto info
if "%impo%" == "2" goto aggiungiip
if "%impo%" == "3" goto crediti
if "%impo%" == "back" goto menuip

:aggiungiip
title Segreto...
mode 60, 15
echo cosa vuoi aggiungere?
echo.
echo [1] Apri discord 
echo [2] Apri il tuo browser 
echo [3] Vedere il tuo ip [Gia' inserito]
echo [4] Tutte e tre
set /p agg=: 
if "%agg%" == "1" goto menuds
if "%agg%" == "2" goto menubro
if "%agg%" == "3" goto giaip
if "%agg%" == "4" goto menuall

:giaip
title errore
echo hai gia' installato il menu ip 
echo adesso ti mando dove eri prima
pause > nul
goto impostazioniip

:menututto
title Menu
mode 70, 20
echo Benvenuto! Cosa vuoi fare?
echo.
echo [1] Attivare l'autoclicker
echo [2] Attivare il contatore di click
echo [3] Impostazioni
echo [4] Apri discord
echo [5] Apri il tuo browser
echo [6] vedi il tuo ip
echo.
set /p tutto=: 
if "%tutto%" == "1" goto autoclicker
if "%tutto%" == "2" goto contatore
if "%tutto%" == "3" goto impostazionitutto
if "%tutto%" == "4" goto dsaperto
if "%tutto%" == "5" goto broaperto
if "%tutto%" == "6" goto ipvedi

:dsaperto
echo adesso ti apro discord (premi enter)
cd "C:\Users\win\AppData\Local\Discord\app-1.0.9006"
"discord.exe"
cls
echo quando hai finito premi enter
pause > nul 
goto menututto

:broaperto
echo Adesso ti apro il tuo browser
echo Premi enter
pause > nul
explorer "https://www.youtube.com"
echo quando hai finito premi enter
pause > nul
goto menututto

:ipvedi
title Ip
cls
echo Adesso ti faccio vedere il tuo ip (premi enter)
pause > nul
@ipconfig/all | find "Subnet Mask"
@ipconfig/all | find "IPv4"
@ipconfig/all | find "Default Gateway"
@ipconfig/all | find "Host Name"
echo quando hai finito premi qualcosa
pause > nul
goto menututto


:impostazionitutto
title impostazioni
mode 60, 15
cls
echo ===============================
echo \  Per uscire scrivi back     /
echo /  File creato da Rimask      \
echo \ ==========================  /
echo /                             \
echo \  [1] Info                   /
echo /                             \
echo \  [2]  +/- Modalita'         /
echo /                             \
echo \  [3] Crediti                /
echo /                             \
echo ===============================
set /p impo=: 
if "%impo%" == "1" goto info
if "%impo%" == "2" goto aggiungitutto
if "%impo%" == "3" goto crediti
if "%impo%" == "back" goto menututto

:aggiungitutto
title Segreto...
mode 60, 15
echo cosa vuoi aggiungere?
echo.
echo [1] Apri discord 
echo [2] Apri il tuo browser 
echo [3] Vedere il tuo ip 
echo [4] Tutte e tre [Gia' inserito]
set /p agg=: 
if "%agg%" == "1" goto menuds
if "%agg%" == "2" goto menubro
if "%agg%" == "3" goto menuip
if "%agg%" == "4" goto giatutto

:giatutto
title errore
echo hai gia' installato il menu tutto
echo adesso ti mando dove eri prima
pause > nul
goto impostazionitutto

:crediti
cls
mode 70, 20
title crediti
echo Ecco i crediti del file (premi qualcosa)
pause > nul 
echo ====================
echo /                  \
echo \ Creatore: Rimask /
echo /                  \
echo \ Discord:         /
echo / https://dsc.gg/  \
echo \ verdino          /
echo /                  \
echo \ Script:          /
echo / https://dsc.gg/  \
echo \ shop-batch       /
echo /                  \
echo \                  /
echo /                  \
echo \                  /
echo =====================
echo.
echo Sono finiti i crediti adesso ti rimando dove eri prima (premi enter)
pause > nul 
goto start

:info
cls
title ecco le info
echo.
echo Il file viene creato dopo una idea venuta dal creatore (Rimask)
echo ci sono voluti 3 giorni PIENI per finire questo progetto
echo spero che lo userete in tanti, per lo staff è grato farci sapere se lo avete usato
echo un saluto dal vostro amicone: Rimask
echo.
echo Adesso ti rimando dove eri prima (premi enter)
pause > nul
goto start

