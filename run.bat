@echo off
title MedXNet Launcher
echo ==========================================
echo Starting MedXNet AI Diagnosis System...
echo ==========================================

cd /d "%~dp0"

echo Launching Streamlit App...
streamlit run app.py

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] The application failed to start.
    echo Please make sure you have installed the dependencies:
    echo pip install -r requirements.txt
    echo.
    pause
)
