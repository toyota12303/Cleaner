@echo off
color 70
title Temp File Cleaner
cls
echo --------------------- > Cleaner.log
echo Temp File Cleaner Log >> Cleaner.log
echo --------------------- >> Cleaner.log
echo. >> Cleaner.log
echo. >> Cleaner.log
echo Temp File Cleaner started successfully at %time% on %date% >> Cleaner.log
echo. >> Cleaner.log
echo %username% has started the application >> Cleaner.log
echo. >> Cleaner.log
echo The temp path is %temp% >> Cleaner.log
echo. >> Cleaner.log
echo The working directory is %cd% >> Cleaner.log
echo. >> Cleaner.log
echo The system folder is located in %systemroot% >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
echo. >> Cleaner.log
:b
cls
echo Temp File Cleaner. - IN DEVELOPMENT!
echo ------------------------------------
echo.
echo Please select an option from the list below.
echo --------------------------------------------
echo.
echo 0. Flush DNS
echo 1. Clean local temp directory
echo 2. Clean Windows temp directory
echo 3. Clean Program temp directory
echo 4. Clear internet history
echo 5. Manually clear a folder
echo 6. Disable internet connection
echo 7. Enable internet connection
echo 8. View current connections
echo 9. Disk cleanup
echo 10. Disk defrag
echo 11. Kill task
echo 13. Task manager
echo 14. Exit
echo.
set /p OPTION=
cls
if "%OPTION%"=="0" (
echo Flushing DNS...
ipconfig /flushdns
echo. >> Cleaner.log
echo DNS successfully flushed >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo DNS successfully flushed!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="1" (
echo Cleaning local temp directory...
cd %temp%
cd ..
rmdir temp /s /q
mkdir temp
echo. >> Cleaner.log
echo Local Temp directory was successfully cleared >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Local temp files cleared!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="2" (
echo Cleaning Windows temp files...
cd %systemroot%
rmdir Temp /s /q
mkdir temp
echo. >> Cleaner.log
echo Windows Temp files was successfully cleared >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Windows temp files cleared!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="3" (
cd %programfiles%
echo Clearing program temp files...
rmdir temp /s /q
mkdir temp
echo. >> Cleaner.log
echo Program Temp files successfully cleared >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Program Files temp directory cleared!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="4" (
echo Clearing internet history...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
echo. >> Cleaner.log
echo Internet history successfully cleared >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Internet history cleared!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="5" (
echo Please input a full folder path to remove.
echo.
echo if the path has any spaces then please include an " either side.
echo.
echo for example "C:\Program Files\"
echo.
echo Folder Path:
set /p FOLDER=
echo. >> Cleaner.log
echo Folder files successfully cleared >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
rmdir %FOLDER% /s /q
mkdir %FOLDER%
cls
echo Folder cleared!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="6" (
echo Disabling internet connection.
echo. >> Cleaner.log
echo Internet connection successfully disabled. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
ipconfig /release
cls
echo Internet connection disabled!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="7" (
echo Enabling internet connection.
echo. >> Cleaner.log
echo Internet connection successfully enabled. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
ipconfig /renew
cls
echo Internet connection enabled!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="8" (
echo Grabbing connection data.
echo. >> Cleaner.log
echo Current connections successfully viewed >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
netstat -t
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="9" (
echo Starting disk cleanup.
echo. >> Cleaner.log
echo Hard drive successfully cleaned. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
cleanmgr
cls
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="10" (
echo Starting disk defrag.
echo. >> Cleaner.log
echo Defrag completed successfully. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
dfrgui.exe
cls
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="11" (
echo Starting task manager.
echo. >> Cleaner.log
echo Unresponsive tasks killed successfully. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Please input the name of the task you would like to kill.
echo.
echo For example to kill Internet Explorer. Type in iexplorer.exe
echo.
set /p TASK=
cls
taskkill /f /im %TASK%
cls
echo Task successfully killed!
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="13" (
echo Starting task manager.
echo. >> Cleaner.log
echo Task manager started successfully. >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
taskmgr
cls
echo.
echo Press any key to return to the main menu.
timeout 60 > nul
goto b
)
if "%OPTION%"=="14" (
echo. >> Cleaner.log
echo Temp File Cleaner exited successfully with no errors >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Goodbye %username%!
timeout 1 > nul
cls
exit
) else (
echo. >> Cleaner.log
echo An error occurred. An unavailable item has been selected >> Cleaner.log
echo. >> Cleaner.log
echo ----------------------------------------------------------------- >> Cleaner.log
cls
echo Item not available.
timeout 1 > nul
goto b
)