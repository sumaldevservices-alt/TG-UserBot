# 📦 Installation Guide — TG-USERBOT-PRO

This guide covers local installation on Windows, Linux, and macOS.

Official Repository URL:
```text
https://github.com/sumaldevservices-alt/TG-UserBot.git
```

---

## 📋 Prerequisites

Before installing, obtain your Telegram credentials:
1. Log in to [https://my.telegram.org](https://my.telegram.org).
2. Go to **API development tools**.
3. Create an application to get your **`API_ID`** and **`API_HASH`**.
4. Get your Telegram numeric user ID using `@userinfobot` on Telegram.

Ensure you have **Python 3.10+** and **Git** installed:
```bash
python --version
git --version
```

---

## 🪟 Windows Installation (PowerShell)

Open PowerShell and run:

```powershell
# 1. Clone the repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git

# 2. Enter the repository directory
cd TG-UserBot

# 3. Create a Python virtual environment
python -m venv venv

# 4. Activate the virtual environment
.\venv\Scripts\Activate.ps1

# 5. Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 6. Create environment configuration
Copy-Item .env.example .env
notepad .env
# Fill in API_ID, API_HASH, OWNER_ID

# 7. Start the Userbot
python userbot.py
```

> **Note on PowerShell Execution Policy:**  
> If activating the venv throws an execution policy error, run:
> ```powershell
> Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
> .\venv\Scripts\Activate.ps1
> ```

---

## 🐧 Linux / macOS Installation (Bash)

Open terminal and run:

```bash
# 1. Clone the repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git

# 2. Enter project folder
cd TG-UserBot

# 3. Install system requirements (Ubuntu/Debian)
sudo apt update
sudo apt install -y python3 python3-venv python3-pip git ffmpeg

# 4. Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# 5. Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 6. Configure environment variables
cp .env.example .env
nano .env
# Set API_ID, API_HASH, OWNER_ID

# 7. Launch the Userbot
python3 userbot.py
```

---

## 🔑 Session Options

### Option A: Local File Session (Default)
When `SESSION_STRING` is left blank in `.env`, the userbot will prompt for your phone number and login code in the terminal on first run. It then creates a local `.session` file.

### Option B: StringSession (Recommended for Cloud / Ephemeral disks)
Run the session generator script:
```bash
python scripts/generate_session.py
```
Copy the generated string and paste it into `.env`:
```env
SESSION_STRING="1BVtsOHQ..."
```

---

## 🚀 Verifying Successful Start

When the bot starts, you will see:
```text
==================================================
🤖 TG-USERBOT-PRO STARTED SUCCESSFULLY
👤 Logged in as → YourName (@your_username)
🆔 User ID → 1234567890
==================================================
```

Send `.ping` or `.menu` in any Telegram chat (or "Saved Messages") to test!
