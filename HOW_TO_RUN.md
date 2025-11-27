# 🚀 How to Run FunASR Project

## ⚠️ Important: PowerShell vs Command Prompt

### In PowerShell (what you're using):
You need to prefix batch files with `.\`:
```powershell
.\run_asr_server.bat
.\run_webui.bat
```

### In Command Prompt (cmd.exe):
You can run batch files directly:
```cmd
run_asr_server.bat
run_webui.bat
```

---

## 📋 Step-by-Step Instructions

### **Step 1: Start the ASR Server**

Open a terminal (PowerShell or cmd) and run:

**PowerShell:**
```powershell
cd D:\FunASR_WS
.\run_asr_server.bat
```

**Command Prompt:**
```cmd
cd D:\FunASR_WS
run_asr_server.bat
```

**What happens:**
- ⏳ Downloads the SenseVoiceSmall model (~893MB) on first run
- 🔄 Loads the model into memory (takes 1-3 minutes)
- ✅ Starts WebSocket server on port 10096
- 📝 You'll see: "Server started" when ready

**First run will take longer** due to model download!

---

### **Step 2: Start the WebUI** (in a NEW terminal)

Open a **NEW** terminal window and run:

**PowerShell:**
```powershell
cd D:\FunASR_WS
.\run_webui.bat
```

**Command Prompt:**
```cmd
cd D:\FunASR_WS
run_webui.bat
```

**What happens:**
- 🌐 Starts web server on port 8101
- 🚀 Automatically opens browser to http://127.0.0.1:8101/web/index.html

---

## 🎯 Alternative: Using Python Directly

If you prefer to use Python commands directly:

### Terminal 1 - ASR Server:
```powershell
.\venv\Scripts\activate
python funasr_wss_server.py --port 10096 --certfile "" --asr_model iic/SenseVoiceSmall --asr_model_revision master --asr_model_online iic/SenseVoiceSmall --asr_model_online_revision master
```

### Terminal 2 - WebUI:
```powershell
.\venv\Scripts\activate
python webui.py
```

---

## ✅ How to Know It's Working

### ASR Server is ready when you see:
```
Server started
Listening on port 10096
```

### WebUI is ready when you see:
```
INFO:     Uvicorn running on http://127.0.0.1:8101
INFO:     Application startup complete.
```

---

## 🎤 Testing the Application

1. **Open browser** to http://127.0.0.1:8101/web/index.html
2. **Allow microphone access** when prompted
3. **Click the record button**
4. **Speak** into your microphone (Chinese or English)
5. **See results** appear in real-time!

---

## 🛑 Stopping the Servers

Press `Ctrl+C` in each terminal window to stop the servers.

---

## 🔧 Troubleshooting

### "The term 'run_asr_server.bat' is not recognized"
**Solution:** In PowerShell, use `.\run_asr_server.bat` (with the `.\` prefix)

### "Port already in use"
**Solution:** 
- Make sure no other application is using port 10096 or 8101
- Close any previous instances of the servers
- Try changing the port in the batch file

### "Model download is slow"
**Solution:**
- The first run downloads ~893MB model files
- This is normal and only happens once
- Files are cached in `./hf_download/` folder

### "Server is taking too long to start"
**Solution:**
- Model loading can take 1-3 minutes on first run
- Be patient and wait for "Server started" message
- Check that you have enough RAM (model needs ~2GB)

### "WebUI can't connect to ASR server"
**Solution:**
- Make sure ASR server is running first
- Check that it shows "Server started" message
- Verify port 10096 is accessible

---

## 📊 System Requirements

- **RAM**: At least 4GB (8GB recommended)
- **Disk Space**: ~2GB for models and dependencies
- **Internet**: Required for first-time model download
- **Microphone**: Required for testing

---

## 📁 Important Files

- `run_asr_server.bat` - Start ASR server (use `.\` in PowerShell)
- `run_webui.bat` - Start WebUI (use `.\` in PowerShell)
- `activate_env.bat` - Activate virtual environment manually
- `venv\` - Python virtual environment
- `hf_download\` - Model cache (created on first run)

---

## 💡 Quick Reference

| Action | PowerShell | Command Prompt |
|--------|-----------|----------------|
| Start ASR Server | `.\run_asr_server.bat` | `run_asr_server.bat` |
| Start WebUI | `.\run_webui.bat` | `run_webui.bat` |
| Activate venv | `.\activate_env.bat` | `activate_env.bat` |
| Stop server | `Ctrl+C` | `Ctrl+C` |

---

**Status**: ✅ Environment is ready!
**Your current status**: ASR server is starting (downloading/loading model)

Just wait for the "Server started" message, then you can use the application! 🎤
