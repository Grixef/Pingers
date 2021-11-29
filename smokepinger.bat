@echo off
color 8
title Pinger

                                                    
echo     //   ) )                                        
echo    ((         _   __      ___     / ___      ___    
echo      \\     // ) )  ) ) //   ) ) //\ \     //___) ) 
echo        ) ) // / /  / / //   / / //  \ \   //        
echo ((___ / / // / /  / / ((___/ / //    \ \ ((____  
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.3 Smoke                     =
echo ====================================================

set /p IP="Ping: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=0F & echo Smoked)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top