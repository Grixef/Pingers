@echo off
color A
title Pinger
                                    

                                    
echo   \\ / /                            
echo    \  /     / __      ___           
echo    / /     //   ) ) //   ) ) \\ / / 
echo   / /\\   //   / / //   / /   \/ /  
echo  / /  \\ ((___/ / ((___/ /    / /\  
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.7 Xbox                      =
echo ====================================================

set /p IP="IP: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=02 & echo Dead)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top