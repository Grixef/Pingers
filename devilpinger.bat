@echo off
color C
title Pinger

echo ########  ######## ##     ## #### ##       
echo ##     ## ##       ##     ##  ##  ##       
echo ##     ## ##       ##     ##  ##  ##       
echo ##     ## ######   ##     ##  ##  ##       
echo ##     ## ##        ##   ##   ##  ##       
echo ##     ## ##         ## ##    ##  ##       
echo ########  ########    ###    #### ######## 
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.5 Devil                     =
echo ====================================================

set /p IP="Ping: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET color=04 & echo Router went to hell)
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top