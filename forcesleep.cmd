@echo off
setlocal

set "FLAG=%~dp0FORCE_SLEEP_DISABLED.txt"

if /I "%~1"=="on" (
    if exist "%FLAG%" del /f /q "%FLAG%" 2>nul
    echo Force-sleep: ENABLED
    exit /b 0
)

if /I "%~1"=="off" (
    echo. > "%FLAG%"
    echo Force-sleep: DISABLED
    exit /b 0
)

if /I "%~1"=="status" (
    if exist "%FLAG%" (
        echo Force-sleep: DISABLED
    ) else (
        echo Force-sleep: ENABLED
    )
    exit /b 0
)

echo.
echo ForceSleep Commands:
echo   forcesleep on      - Enable idle sleep
echo   forcesleep off     - Disable idle sleep
echo   forcesleep status  - Check if enabled/disabled
echo.

