@echo off
color F
title Pinger

echo     //   ) )                                      
echo    //___/ / ( )   __      ___      ___      __    
echo   / ____ / / / //   ) ) //   ) ) //___) ) //  ) ) 
echo  //       / / //   / / ((___/ / //       //       
echo //       / / //   / /   //__   ((____   //  
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.1 Basic                     =
echo ====================================================

set /p IP="Ping: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=02 & echo Offline)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top