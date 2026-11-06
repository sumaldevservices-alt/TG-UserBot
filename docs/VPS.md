# 🌐 VPS Deployment Guide — TG-USERBOT-PRO

This guide walks you through deploying **TG-USERBOT-PRO** on an Ubuntu or Debian VPS with automated restart and background daemonization using **systemd**.

Repository:
```text
https://github.com/sumaldevservices-alt/TG-UserBot.git
```

---

## 1. System Preparation & Dependencies

Update packages and install core build tools, Python, and `ffmpeg` (required for audio/music conversions):

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3 python3-pip python3-venv git ffmpeg curl
```

---

## 2. Dedicated User Setup (Security Best Practice)

Do not run the userbot as `root`. Create a dedicated system user:

```bash
sudo useradd -m -s /bin/bash userbot
sudo su - userbot
```

---

## 3. Clone and Setup Environment

As the `userbot` user:

```bash
# Clone the repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git /home/userbot/TG-UserBot
cd /home/userbot/TG-UserBot

# Create Python virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Configure environment
cp .env.example .env
nano .env
```

Fill in your Telegram credentials in `.env`:
```env
API_ID=12345678
API_HASH=your_api_hash_here
OWNER_ID=1234567890
SESSION_STRING=your_string_session_here
```

Test running once to verify credentials:
```bash
python3 userbot.py
# Press Ctrl+C once you see "TG-USERBOT-PRO STARTED SUCCESSFULLY"
exit  # Return to your sudo user
```

---

## 4. Systemd Service Setup

Create a systemd service file:

```bash
sudo nano /etc/systemd/system/tg-userbot.service
```

Paste the following template (adjust paths/usernames if customized):

```ini
[Unit]
Description=TG-USERBOT-PRO Telegram Userbot Service
After=network.target

[Service]
Type=simple
User=userbot
WorkingDirectory=/home/userbot/TG-UserBot
EnvironmentFile=/home/userbot/TG-UserBot/.env
ExecStart=/home/userbot/TG-UserBot/venv/bin/python3 /home/userbot/TG-UserBot/userbot.py
Restart=always
RestartSec=10
LimitNOFILE=65536

# Security hardening
NoNewPrivileges=true
PrivateTmp=true

[Install]
WantedBy=multi-user.target
```

---

## 5. Enable and Start Service

Reload systemd daemon, enable auto-start on boot, and start the service:

```bash
sudo systemctl daemon-reload
sudo systemctl enable tg-userbot
sudo systemctl start tg-userbot
```

Verify service status:
```bash
sudo systemctl status tg-userbot
```

---

## 6. Service Management & Live Logs

View live userbot logs:
```bash
sudo journalctl -u tg-userbot -f -n 100
```

Stop or restart the service:
```bash
sudo systemctl stop tg-userbot
sudo systemctl restart tg-userbot
```

---

## 7. Updating the Bot

To update to the latest code from Git:

```bash
sudo su - userbot
cd /home/userbot/TG-UserBot
git pull origin main
source venv/bin/activate
pip install -r requirements.txt --upgrade
exit

sudo systemctl restart tg-userbot
```
