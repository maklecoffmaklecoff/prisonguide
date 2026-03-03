@echo off
echo Starting Ton Prison Guides...
echo.

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Using Python server...
    echo Open: http://localhost:8000
    echo.
    python -m http.server 8000
    goto :end
)

where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Using Node.js server...
    echo Open: http://localhost:8000
    echo.
    npx http-server -p 8000
    goto :end
)

echo ERROR: Neither Python nor Node.js found!
echo.
echo Please install one of:
echo - Python 3: https://www.python.org/downloads/
echo - Node.js: https://nodejs.org/
echo.
echo Or use VS Code with Live Server extension
pause

:end
