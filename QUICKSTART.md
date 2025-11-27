# FunASR Project - Quick Start Guide

## ✅ Environment Setup Complete!

A Python virtual environment has been created and all dependencies have been installed successfully.

## 📁 Project Structure

- `funasr_wss_server.py` - WebSocket ASR server
- `webui.py` - Web UI server
- `app.py` - Alternative FastAPI application
- `run_asr_server.bat` - Start the ASR server (NEW)
- `run_webui.bat` - Start the WebUI (NEW)

## 🚀 How to Run the Project

### Option 1: Using the Batch Files (Recommended)

#### Step 1: Start the ASR Server
Double-click `run_asr_server.bat` or run in terminal:
```cmd
run_asr_server.bat
```

**Important:** Wait for the server to fully start. You'll see messages about model loading. This may take a few minutes on first run as it downloads the SenseVoiceSmall model.

#### Step 2: Start the WebUI (in a new terminal)
Double-click `run_webui.bat` or run in a new terminal:
```cmd
run_webui.bat
```

The browser will automatically open to: `http://127.0.0.1:8101/web/index.html`

### Option 2: Manual Commands

#### Terminal 1 - Start ASR Server:
```cmd
.\venv\Scripts\activate
python funasr_wss_server.py --port 10096 --certfile "" --asr_model iic/SenseVoiceSmall --asr_model_revision master --asr_model_online iic/SenseVoiceSmall --asr_model_online_revision master
```

#### Terminal 2 - Start WebUI:
```cmd
.\venv\Scripts\activate
python webui.py
```

Then open your browser to: `http://127.0.0.1:8101/web/index.html`

## 🎯 What This Project Does

This is a **real-time Automatic Speech Recognition (ASR)** system based on Alibaba's FunASR:

- **WebSocket Server**: Provides real-time speech-to-text conversion
- **Web Interface**: Browser-based UI for testing ASR with microphone input
- **Model**: Uses SenseVoiceSmall for Chinese/English speech recognition
- **Modes**: Supports offline, online streaming, and 2-pass recognition

## 📝 Configuration

### Server Configuration
- **Port**: 10096 (ASR WebSocket server)
- **WebUI Port**: 8101
- **Model**: iic/SenseVoiceSmall
- **Model Cache**: `./hf_download/`

### Environment Variables Set:
- `KMP_DUPLICATE_LIB_OK=TRUE` - Prevents OpenMP conflicts
- `HF_ENDPOINT=https://hf-mirror.com` - Hugging Face mirror
- `MODELSCOPE_CACHE` - Model download location

## 🔧 Troubleshooting

### Issue: Server won't start
- Make sure port 10096 is not in use
- Check that the virtual environment is activated
- Ensure all dependencies are installed

### Issue: Model download fails
- Check your internet connection
- The first run downloads ~200MB model files
- Models are cached in `./hf_download/` folder

### Issue: WebUI can't connect
- Ensure the ASR server is running first
- Check that both services are using the correct ports
- Try refreshing the browser page

## 📦 Installed Dependencies

- **FunASR 1.1.16** - Core ASR engine
- **FastAPI** - Web framework
- **Uvicorn** - ASGI server
- **WebSockets 12.0** - WebSocket support
- **ONNX Runtime** - Model inference
- **Loguru** - Logging
- **Pydub** - Audio processing

## 🌐 Access Points

- **WebUI**: http://127.0.0.1:8101/web/index.html
- **ASR WebSocket**: ws://127.0.0.1:10096

## 📚 Additional Information

For more details on the FunASR framework, visit:
- GitHub: https://github.com/alibaba/FunASR
- Documentation: Check the original README.md

## 🎤 Testing

1. Open the WebUI in your browser
2. Allow microphone access when prompted
3. Click the record button
4. Speak into your microphone
5. See real-time transcription results

---

**Environment Created**: 2025-11-26
**Python Version**: 3.11.9
**Virtual Environment**: `.\venv\`
