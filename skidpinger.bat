@echo off
color A
title Pinger
                                    
echo     //   ) )                         
echo    ((        / ___     ( )  ___   /  
echo      \\     //\ \     / / //   ) /   
echo        ) ) //  \ \   / / //   / /    
echo ((___ / / //    \ \ / / ((___/ /     

echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.6 Skid                      =
echo ====================================================

set /p IP="Type that skids shit: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=42 & echo Skid Slammed)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top