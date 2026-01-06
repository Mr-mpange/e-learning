@echo off
echo ========================================
echo    Frappe LMS - Quick Docker Start
echo ========================================
echo.
echo Starting Docker development environment...
echo This will start MariaDB, Redis, and Frappe LMS
echo.
echo Application will be available at: http://localhost:8000/lms
echo Default credentials: Administrator / admin
echo.

cd docker
docker-compose up -d

if errorlevel 1 (
    echo.
    echo ERROR: Failed to start Docker services!
    echo Make sure Docker Desktop is running.
    pause
    exit /b 1
)

echo.
echo ========================================
echo SUCCESS: LMS is starting up!
echo ========================================
echo.
echo Please wait a few moments for the application to initialize...
echo.
echo Application URLs:
echo - LMS Frontend: http://localhost:8000/lms
echo - Frappe Desk: http://localhost:8000
echo.
echo To stop: run stop_all.bat
echo To view logs: docker-compose logs -f
echo.
pause