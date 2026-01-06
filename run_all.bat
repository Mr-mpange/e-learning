@echo off
echo ========================================
echo    Frappe LMS - Development Launcher
echo ========================================
echo.

:menu
echo Choose your development setup:
echo 1. Docker Development (Recommended for quick start)
echo 2. Local Frappe Development (Requires Frappe bench setup)
echo 3. Frontend Only (Vue.js development server)
echo 4. Exit
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto docker_dev
if "%choice%"=="2" goto local_dev
if "%choice%"=="3" goto frontend_only
if "%choice%"=="4" goto exit
echo Invalid choice. Please try again.
goto menu

:docker_dev
echo.
echo Starting Docker Development Environment...
echo ========================================
echo.
echo This will start:
echo - MariaDB database
echo - Redis cache
echo - Frappe backend server
echo - LMS application
echo.
echo The application will be available at: http://localhost:8000/lms
echo Default credentials: Administrator / admin
echo.
pause
echo.
echo Checking if Docker is running...
docker --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Docker is not installed or not running!
    echo Please install Docker Desktop and make sure it's running.
    pause
    goto menu
)

echo.
echo Starting Docker services...
cd docker
docker-compose up -d
if errorlevel 1 (
    echo ERROR: Failed to start Docker services!
    pause
    goto menu
)

echo.
echo ========================================
echo Docker services started successfully!
echo ========================================
echo.
echo Services running:
docker-compose ps
echo.
echo Application URLs:
echo - LMS Frontend: http://localhost:8000/lms
echo - Frappe Desk: http://localhost:8000
echo.
echo To stop services, run: docker-compose down
echo To view logs, run: docker-compose logs -f
echo.
echo Press any key to return to menu...
pause >nul
cd ..
goto menu

:local_dev
echo.
echo Starting Local Frappe Development...
echo ========================================
echo.
echo This requires:
echo - Frappe bench setup
echo - Python environment
echo - Node.js and Yarn
echo.
echo Starting services in separate windows...

echo Starting Frappe backend...
start "Frappe Backend" cmd /k "echo Starting Frappe server... && bench start"

timeout /t 3 >nul

echo Starting Frontend development server...
start "Frontend Dev Server" cmd /k "cd frontend && echo Starting Vue.js dev server... && yarn dev"

echo.
echo ========================================
echo Local development servers started!
echo ========================================
echo.
echo Services started in separate windows:
echo - Frappe Backend (bench start)
echo - Frontend Dev Server (Vue.js + Vite)
echo.
echo Application URLs:
echo - LMS Frontend: http://localhost:8000/lms
echo - Frontend Dev: http://localhost:5173 (if using Vite dev server)
echo.
echo Press any key to return to menu...
pause >nul
goto menu

:frontend_only
echo.
echo Starting Frontend Development Only...
echo ========================================
echo.
echo This will start only the Vue.js development server.
echo You'll need a running Frappe backend separately.
echo.
pause

echo Checking if Node.js and Yarn are available...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed!
    pause
    goto menu
)

yarn --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Yarn is not installed!
    echo Please install Yarn: npm install -g yarn
    pause
    goto menu
)

echo.
echo Installing dependencies...
cd frontend
yarn install
if errorlevel 1 (
    echo ERROR: Failed to install dependencies!
    pause
    cd ..
    goto menu
)

echo.
echo Starting Vue.js development server...
echo Frontend will be available at: http://localhost:5173
echo.
yarn dev

cd ..
goto menu

:exit
echo.
echo Goodbye!
timeout /t 2 >nul
exit /b 0