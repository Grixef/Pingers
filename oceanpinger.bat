@echo off
color 1
title Pinger
                                                   
echo     //   ) )                                   
echo    //   / /  ___      ___      ___       __    
echo   //   / / //   ) ) //___) ) //   ) ) //   ) ) 
echo  //   / / //       //       //   / / //   / /  
echo ((___/ / ((____   ((____   ((___( ( //   / / 
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.4 Ocean                     =
echo ====================================================

set /p IP="Ping: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=0b & echo Smoked)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top