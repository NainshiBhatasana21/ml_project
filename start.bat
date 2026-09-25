@echo off
echo ===================================================
echo   Starting Vehicle Insurance Fraud Analytics Hub
echo ===================================================

echo [1/2] Launching Backend ML Server on http://127.0.0.1:8000 ...
start "Insurance Fraud ML Backend" cmd /k "python run_server.py"

echo [2/2] Launching Frontend Development Server ...
cd Front-end
start "Insurance Fraud Frontend" cmd /k "npm run dev"

echo.
echo ===================================================
echo   Services Started:
echo   - Backend ML API:  http://127.0.0.1:8000
echo   - API Swagger Docs: http://127.0.0.1:8000/docs
echo   - Frontend UI:     http://localhost:5173
echo ===================================================
