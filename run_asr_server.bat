@echo off
chcp 65001

echo Starting FunASR WebSocket Server...
echo.

SET KMP_DUPLICATE_LIB_OK=TRUE
set HF_ENDPOINT=https://hf-mirror.com
set HF_HOME=%CD%\hf_download
set MODELSCOPE_CACHE=%CD%\hf_download
set disable_update=True

.\venv\Scripts\python.exe funasr_wss_server.py --port 10096 --certfile "" --asr_model iic/SenseVoiceSmall --asr_model_revision master --asr_model_online iic/SenseVoiceSmall --asr_model_online_revision master

pause
