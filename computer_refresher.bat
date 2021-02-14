echo off
color a
title PC REFRESHER BY AK-HACKS-OR-TRICKS
:dash
cls
echo ########################################
echo 1: Refresh Your PC                     $
echo 2: Refresh Your PC Automatically Daily $
echo 3: EXIT                                $
echo ########################################
echo.
choice /C 123

if %ERRORLEVEL%==1 (
cls
cd %temp%
del /Q *.*
cd C:\Windows\Prefetch
del /Q *.*
cls
echo REFRESHING PC 100% COMPLETED
echo.
echo PC REFRESHER BY AK-HACKS-OR-TRICKS  
pause
goto dash
)
if %ERRORLEVEL%==2 (
goto checker
:come
cls
cd %appdata%
cd Microsoft\Windows\Start Menu\Programs\Startup
echo echo off>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo cls>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo cd %temp%>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo del /Q *.*>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo cd C:\Windows\Prefetch>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo del /Q *.*>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo cls>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo echo PC REFRESHED BY PC REFRESHER BY AK HACKS>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo echo.>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo pause>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
echo exit>>PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat
cls
echo DONE. WHEN YOU START YOUR COMPUTER THEN IT WILL AUTOMATICALLY REFRESH YOUR PC.
echo IT WILL ASK YOU TO PRESS ANY KEY TO CONTINUE. JUST HIT ONE CLICK.
pause
goto dash
)
if %ERRORLEVEL%==3 (
cls
echo VERY VERY THANK YOU FOR USING OUR PROGRAM
pause
exit
)

:checker
cls
cd %appdata%
cd Microsoft\Windows\Start Menu\Programs\Startup
if EXIST "PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat" (
echo YOUR PC ALREADY HAS THIS FEATURE, WOULD YOU LIKE TO DELETE IT ?
echo [1] Yes [2] No
choice /C 12
goto ultrachecker
) else (
goto come
)

:ultrachecker
if %ERRORLEVEL%==1 (
del "PC_REFRESHER_BY_AK-HACKS-OR-TRICKS.bat"
cls
echo THIS FEATURE IS DELETED SUCCESSFULLY
pause
goto dash
) else (
cls
echo FEATURE DELETE CANCELLED BY THE USER
pause
goto dash
)
