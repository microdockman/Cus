@echo off 2>nul >nul
setlocal EnableDelayedExpansion

set "latest_ip=%userprofile%\desktop\ip_latest.txt"

if not exist "%latest_ip%" (
    for /f "tokens=1,8" %%a in ('zerotier-cli peers ^| findstr /C:"*******"') do (
        set ip=%%b
        for /f "tokens=1 delims=/" %%c in ("!ip!") do set ip=%%c
        echo !ip!>"%latest_ip%"
        echo %date:/=-%_%time::=-%>>"%latest_ip%"
    )
) else (
    set /p old_ip=<"%latest_ip%"
    for /f "tokens=1,8" %%a in ('zerotier-cli peers ^| findstr /C:"*******"') do (
        set ip=%%b
        for /f "tokens=1 delims=/" %%c in ("!ip!") do set ip=%%c
        if not "!ip!"=="!old_ip!" (
            echo !ip!>"%latest_ip%.new"
            echo %date:/=-%_%time::=-%>>"%latest_ip%.new"
            type "%latest_ip%" >> "%latest_ip%.new"
            move /y "%latest_ip%.new" "%latest_ip%" >nul
        )
    )
)