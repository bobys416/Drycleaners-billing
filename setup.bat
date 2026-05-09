@echo off
setlocal enabledelayedexpansion

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║  FreshClean Dry Cleaning Billing System - Setup      ║
echo ║  Windows Installer                                   ║
echo ╚══════════════════════════════════════════════════════╝
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ ERROR: Python is not installed or not in PATH
    echo.
    echo Please install Python 3.8+ from: https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    echo.
    pause
    exit /b 1
)

echo ✅ Python found
python --version
echo.

REM Install dependencies
echo 📦 Installing required packages...
pip install flask flask-cors openpyxl >nul 2>&1
if errorlevel 1 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)
echo ✅ Dependencies installed successfully
echo.

REM Create shortcut on Desktop
echo 🔗 Creating desktop shortcut...
powershell -Command "if (-Not (Test-Path '%USERPROFILE%\Desktop\FreshClean Billing.lnk')) { $shell = New-Object -ComObject WScript.Shell; $shortcut = $shell.CreateShortcut('%USERPROFILE%\Desktop\FreshClean Billing.lnk'); $shortcut.TargetPath = '%~dp0dist\app.exe'; $shortcut.WorkingDirectory = '%~dp0'; $shortcut.IconLocation = '%~dp0dist\app.exe'; $shortcut.Save() }" 2>nul
echo ✅ Shortcut created on Desktop
echo.

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║  ✅ Installation Complete!                           ║
echo ╚══════════════════════════════════════════════════════╝
echo.
echo 📍 Launch Methods:
echo   1. Double-click "FreshClean Billing" on your Desktop
echo   2. Or run: dist\app.exe
echo   3. Or run: python app.py
echo.
echo 🌐 Access the app at: http://localhost:5055
echo.
echo Press any key to exit...
pause >nul
