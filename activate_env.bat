@echo off
echo.
echo ========================================
echo   FunASR Virtual Environment
echo ========================================
echo.
echo Activating Python virtual environment...
echo.

call .\venv\Scripts\activate.bat

echo.
echo ✓ Virtual environment activated!
echo.
echo You can now run:
echo   - python funasr_wss_server.py [options]
echo   - python webui.py
echo   - python funasr_wss_client.py [options]
echo.
echo Or use the convenient batch files:
echo   - run_asr_server.bat
echo   - run_webui.bat
echo.
echo Type 'deactivate' to exit the virtual environment.
echo.
