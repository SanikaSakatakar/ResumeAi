@echo off
echo.
echo ========================================
echo    ResumeAI Pro - Starting Server
echo ========================================
echo.

cd /d "%~dp0server"

echo [1/3] Checking Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js not found!
    echo Please install Node.js from: https://nodejs.org
    echo Download the LTS version and run this script again.
    pause
    exit /b 1
)
echo Node.js found: OK

echo.
echo [2/3] Installing dependencies...
call npm install --silent
if errorlevel 1 (
    echo ERROR: npm install failed!
    pause
    exit /b 1
)
echo Dependencies installed: OK

echo.
echo [3/3] Starting server...
echo.
echo ========================================
echo  Server running at: http://localhost:3001
echo  Open your browser to that URL!
echo  Press Ctrl+C to stop the server
echo ========================================
echo.
node index.js
pause
