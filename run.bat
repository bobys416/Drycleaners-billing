@echo off
REM Run the FreshClean Billing application

cd /d "%~dp0"

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo.
    echo ❌ ERROR: Python is not installed or not in PATH
    echo Please run setup.bat first to install dependencies
    echo.
    pause
    exit /b 1
)

REM Run the app
echo Starting FreshClean Billing System...
python app.py
