@ECHO OFF
COLOR 0a
cls
ECHO. +----------------+
ECHO. +                +
ECHO. +System Profiling+
ECHO. +                +
ECHO. +----------------+
mkdir REPORTING
echo ************************************** >REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
echo                  REPORT				>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
echo ************************************** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT &&  ECHO.>>REPORTING\REPORT.TXT &&  ECHO.>>REPORTING\REPORT.TXT
echo *********** UTENTE ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
WHOAMI >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** NOME HOST ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
HOSTNAME >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** VERSIONE OS ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
VER >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** DATA ORA e FUSO ORARIO ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
DATE /T >>REPORTING\REPORT.TXT && TIME /T >>REPORTING\REPORT.TXT   && TZUTIL /g  >>REPORTING\REPORT.TXT 
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** INTERFACCE DI RETE ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
IPCONFIG /ALL >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** VARIABILI D'AMBIENTE ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
SET >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** CACHE ARP ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
ARP -A >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** CONNESSIONI ATTIVE ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
NETSTAT -ANO >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** CONDIVISIONI ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
NET SHARE >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** INFORMAZIONI DI SISTEMA ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
PSINFO /accepteula >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** LISTA PROCESSI ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT
PSLIST -x /accepteula >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo *********** UTENTI LOCALI O REMOTI CHE HANNO EFFETTUATO IL LOGIN ********** >>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT 
PSLOGGEDON /accepteula >>REPORTING\REPORT.TXT
ECHO.>>REPORTING\REPORT.TXT && ECHO.>>REPORTING\REPORT.TXT && echo ****DUMP EVENT LOG ********** >>REPORTING\EVENT_LOG.TXT && ECHO.>>REPORTING\EVENT_LOG.TXT
PSLOGLIST /accepteula >>REPORTING\EVENT_LOG.TXT
cd REPORTING
cd >cd.txt 
set /P p=<cd.txt
del cd.txt
cd \
dir /s/b/o:n/A:D >>%p%\directory_name.txt
pause







