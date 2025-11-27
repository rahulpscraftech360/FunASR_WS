@echo off
chcp 65001

echo Starting FunASR WebUI...
echo.
echo WebUI will be available at: http://127.0.0.1:8101/web/index.html
echo.

SET KMP_DUPLICATE_LIB_OK=TRUE
set HF_ENDPOINT=https://hf-mirror.com
set HF_HOME=%CD%\hf_download
set MODELSCOPE_CACHE=%CD%\hf_download
set disable_update=True

timeout /t 2 /nobreak > nul
start "" "http://127.0.0.1:8101/web/index.html"

.\venv\Scripts\python.exe webui.py

pause
