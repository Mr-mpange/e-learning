@echo off
echo ========================================
echo    Frappe LMS - Stop All Services
echo ========================================
echo.
echo Stopping Docker services...

cd docker
docker-compose down

if errorlevel 1 (
    echo ERROR: Failed to stop services!
    pause
    exit /b 1
)

echo.
echo ========================================
echo All services stopped successfully!
echo ========================================
echo.
echo To start again, run: quick_start.bat or run_all.bat
echo.
pause