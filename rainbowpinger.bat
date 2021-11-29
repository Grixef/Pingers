@echo off
color A
title Pinger


echo     //   ) )                             
echo    //         ___     //  ___      __    
echo   //        //   ) ) // //   ) ) //  ) ) 
echo  //        //   / / // //   / / //       
echo ((____/ / ((___/ / // ((___/ / //  

echo     //   ) )                                      
echo    //___/ / ( )   __      ___      ___      __    
echo   / ____ / / / //   ) ) //   ) ) //___) ) //  ) ) 
echo  //       / / //   / / ((___/ / //       //       
echo //       / / //   / /   //__   ((____   //  
echo ====================================================
echo =               CTRL+C TO STOP PINGING             =
echo =                    0.2 Rainbow                   =
echo ====================================================

set /p IP=Enter IP To Ping:
:top
PING -n 1 %IP% | FIND "TTL="
title :: Pinging: %IP% ::
IF ERRORLEVEL 1 (echo STAY DOWN BITCH!)
set /a color=(%Random%%%9)+1
color %color%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top