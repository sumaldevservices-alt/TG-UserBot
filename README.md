<div align="center">

# ⚡ TG-USERBOT-PRO

### Production-Ready, High-Performance Asynchronous Telegram Userbot

[![Python Version](https://img.shields.io/badge/Python-3.10%20%7C%203.11%20%7C%203.12-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Telethon](https://img.shields.io/badge/Telethon-v1.36+-0088cc?style=for-the-badge&logo=telegram&logoColor=white)](https://github.com/LonamiWebs/Telethon)
[![Docker Ready](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![CI Status](https://img.shields.io/badge/CI-Passing-brightgreen?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/sumaldevservices-alt/TG-UserBot/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

<br/>

```
  ████████╗ ██████╗       ██╗   ██╗███████╗███████╗██████╗ ██████╗  ██████╗ ████████╗
  ╚══██╔══╝██╔════╝       ██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗██╔═══██╗╚══██╔══╝
     ██║   ██║  ███╗█████╗██║   ██║███████╗█████╗  ██████╔╝██████╔╝██║   ██║   ██║   
     ██║   ██║   ██║╚════╝██║   ██║╚════██║██╔══╝  ██╔══██╗██╔══██╗██║   ██║   ██║   
     ██║   ╚██████╔╝      ╚██████╔╝███████║███████╗██║  ██║██████╔╝╚██████╔╝   ██║   
     ╚═╝    ╚═════╝        ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝    ╚═╝   
```

**An extensible, modular, multi-platform personal automation userbot for Telegram built with Telethon.**

[Features](#-key-features) • [Installation](#-installation-guide) • [Docker](#-docker-deployment) • [VPS](#-vps-systemd-deployment) • [Cloud](#-cloud-deployment-render--railway--heroku) • [Commands](#-command-reference) • [Security](#-security--responsible-automation)

</div>

---

## 📖 Overview

**TG-USERBOT-PRO** is an advanced open-source Telegram Userbot built on the asynchronous [Telethon](https://github.com/LonamiWebs/Telethon) framework. Designed with modularity, speed, and reliability in mind, it provides robust administration tools, group management capabilities, media converters, real-time message protection, and automated background handlers.

### 🌟 Why TG-USERBOT-PRO?
- **Zero Hardcoded Credentials**: Complete 12-factor configuration using environment variables or `.env` files.
- **Dual Session Support**: Supports both local SQLite session files and ephemeral `StringSession` strings for cloud platforms.
- **Resilient Engine**: Built-in automatic reconnection, graceful FloodWait backoff, and task cancellation handling.
- **Comprehensive Deployment**: Pre-configured for Docker, Docker Compose, systemd VPS, Render, Railway, and Heroku-compatible PaaS.
- **Safe Secrets Handling**: Credential leakage prevention in logging and public outputs.

---

## 🛠️ Technology Stack

| Layer | Technology |
|---|---|
| **Core Runtime** | Python 3.10+ (Asynchronous `asyncio`) |
| **Telegram MTProto Client** | [Telethon](https://github.com/LonamiWebs/Telethon) (v1.36+) |
| **Crypto Acceleration** | `cryptg` |
| **Media Processing** | `yt-dlp`, `ffmpeg`, `gTTS`, `qrcode`, `Pillow` |
| **Network & HTTP** | `aiohttp`, `requests` |
| **Containerization** | Docker, Docker Compose |
| **Daemonization** | systemd (Linux), Render Worker, Railway |

---

## ✨ Key Features

```
┌────────────────────────────────────────────────────────────────────────┐
│                        TG-USERBOT-PRO ARCHITECTURE                     │
├─────────────────────┬────────────────────┬─────────────────────────────┤
│ 👑 Administration   │ 🛡️ Protection       │ 🎵 Media & Utility          │
│ • Universal Targets │ • Anti-Delete Log  │ • High-Quality Music (MP3)  │
│ • Dynamic Admin Set │ • WatchSpam Limits │ • Voice Notes (.ogg)        │
│ • Local/Global Mute │ • Group Locks      │ • Text-to-Speech (TTS)      │
│ • Member Kick/Throw │ • Auto-Reaction    │ • QR Code Generator         │
│ • Batch Msg Purging │ • Profile Cloning  │ • Weather, IP & Calculator  │
└─────────────────────┴────────────────────┴─────────────────────────────┘
```

- **👑 Admin & Group Control**: Granular multi-target resolution (reply, `@username`, or numeric ID) with local and global mute, message purge, and group lock.
- **🛡️ Real-Time Anti-Delete**: Instant caching of your own outgoing messages to resend if maliciously deleted by chat administrators.
- **👁️ WatchSpam Engine**: Automatically monitors opponent spam frequency and deletes rapid-fire messages surpassing configured thresholds.
- **🎵 Media & Music Downloader**: In-memory and streaming audio extraction powered by `yt-dlp` and `ffmpeg` with 320kbps MP3 tags and Telegram voice note support.
- **👤 Profile Replication (Clone)**: Temporarily duplicate name, bio, and avatar of any user and restore back to original state with one command.

---

## 📂 Repository Structure

```text
TG-USERBOT-PRO/
├── .github/
│   └── workflows/
│       └── ci.yml               # Automated CI syntax and configuration validation
├── docs/
│   ├── INSTALLATION.md          # Step-by-step local install (Windows, Linux, macOS)
│   ├── VPS.md                   # Ubuntu/Debian systemd daemonization guide
│   ├── DOCKER.md                # Docker and Docker Compose instructions
│   └── TROUBLESHOOTING.md       # Solutions to common errors and FloodWait
├── scripts/
│   ├── generate_session.py      # Telethon StringSession interactive generator
│   └── start.sh                 # Linux / VPS startup helper script
├── userbot.py                   # Main userbot application entry point
├── Dockerfile                   # Multi-stage production container definition
├── docker-compose.yml           # Production Docker Compose orchestration
├── Procfile                     # Heroku / Dokku background worker specification
├── render.yaml                  # Render blueprint for background worker
├── railway.json                 # Railway deployment configuration
├── requirements.txt             # Python project dependencies
├── .env.example                 # Environment variables template
├── .gitignore                   # Git ignore patterns (protects secrets/sessions)
├── .dockerignore                # Docker build context exclusions
├── LICENSE                      # MIT Open Source License
└── README.md                    # Project documentation
```

---

## ⚙️ Environment Configuration

Copy `.env.example` to `.env` and fill in your details:

```bash
cp .env.example .env
```

| Variable | Required | Description | Example |
|---|:---:|---|---|
| `API_ID` | **Yes** | Telegram API ID from [my.telegram.org](https://my.telegram.org) | `12345678` |
| `API_HASH` | **Yes** | Telegram API Hash from [my.telegram.org](https://my.telegram.org) | `3471a69391735...` |
| `OWNER_ID` | **Yes** | Your numeric Telegram user ID | `8420590053` |
| `SESSION_STRING` | Optional | Telethon StringSession (Recommended for Cloud) | `1BVtsOHQ...` |
| `SESSION_NAME` | Optional | Session file name if `SESSION_STRING` is empty | `tg_userbot_pro` |

> ⚠️ **CRITICAL SECURITY NOTICE**: Never commit your `.env` file or session strings to GitHub.

---

## 🔑 Generating a Session String

For platforms without persistent disk storage (e.g. Render, Railway, Heroku), generate an authorized `StringSession`:

```bash
python scripts/generate_session.py
```

Follow the prompts to receive your string session and assign it to `SESSION_STRING` in your environment.

---

## 🚀 Installation Guide

### 🪟 Windows (PowerShell)

```powershell
# 1. Clone repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git

# 2. Enter folder
cd TG-UserBot

# 3. Create virtual environment
python -m venv venv
.\venv\Scripts\Activate.ps1

# 4. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 5. Configure environment variables
Copy-Item .env.example .env
notepad .env

# 6. Start the userbot
python userbot.py
```

### 🐧 Ubuntu / Debian / Linux

```bash
# 1. Clone repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git
cd TG-UserBot

# 2. Install system packages
sudo apt update && sudo apt install -y python3 python3-venv python3-pip git ffmpeg

# 3. Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# 4. Install requirements
pip install --upgrade pip
pip install -r requirements.txt

# 5. Configure credentials
cp .env.example .env
nano .env

# 6. Start userbot
python3 userbot.py
```

---

## 🐳 Docker Deployment

The fastest, most isolated way to run TG-USERBOT-PRO.

```bash
# 1. Clone and enter directory
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git
cd TG-UserBot

# 2. Create and fill .env
cp .env.example .env
nano .env

# 3. Build and launch with Docker Compose
docker compose up -d --build

# 4. View live logs
docker compose logs -f userbot
```

For complete Docker instructions and standalone `docker run` commands, see [docs/DOCKER.md](docs/DOCKER.md).

---

## 🖥️ VPS (Systemd) Deployment

To run TG-USERBOT-PRO as a background Linux service that restarts automatically after reboot or crashes:

1. Follow the setup in [docs/VPS.md](docs/VPS.md).
2. Use the provided systemd service file:

```ini
[Unit]
Description=TG-USERBOT-PRO Telegram Userbot
After=network.target

[Service]
Type=simple
User=userbot
WorkingDirectory=/home/userbot/TG-UserBot
EnvironmentFile=/home/userbot/TG-UserBot/.env
ExecStart=/home/userbot/TG-UserBot/venv/bin/python3 /home/userbot/TG-UserBot/userbot.py
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

3. Enable and start:
```bash
sudo systemctl daemon-reload
sudo systemctl enable --now tg-userbot
```

---

## ☁️ Cloud Deployment (Render / Railway / Heroku)

### Render (Worker)
1. Fork or push your repository.
2. In [Render Dashboard](https://dashboard.render.com/), choose **New +** > **Blueprint**.
3. Select your repository. Render reads [`render.yaml`](render.yaml) automatically.
4. Set `API_ID`, `API_HASH`, `OWNER_ID`, and `SESSION_STRING` in the Environment tab.

### Railway
1. In [Railway](https://railway.app/), choose **New Project** > **Deploy from GitHub repo**.
2. Select your repository. Railway automatically builds using the [`Dockerfile`](Dockerfile) and [`railway.json`](railway.json).
3. Add the required variables in the **Variables** tab.

### Heroku / Dokku
The repository includes a [`Procfile`](Procfile) declaring the process as a background worker:
```text
worker: python userbot.py
```
Scale worker dyno:
```bash
heroku ps:scale worker=1
```

---

## 📜 Command Reference

Default prefix: `.` (dot)

<details>
<summary><b>👑 Administration & Group Moderation</b></summary>

| Command | Usage | Description |
|---|---|---|
| `.admins` | `.admins` | List all authorized bot admins |
| `.addadmin` | `.addadmin @user` (or reply) | Grant admin rights to a user |
| `.deladmin` | `.deladmin @user` (or reply) | Revoke admin rights from a user |
| `.mute` | `.mute @user` (or reply) | Locally mute user |
| `.unmute` | `.unmute @user` (or reply) | Locally unmute user |
| `.gmute` | `.gmute @user` (or reply) | Globally mute user in all chats |
| `.gunmute` | `.gunmute @user` (or reply) | Globally unmute user |
| `.mutelist` | `.mutelist` | Display muted users and locked groups |
| `.lock` | `.lock` | Lock group messages for non-admins |
| `.unlock` | `.unlock` | Unlock group messages |
| `.purge` | `.purge <count>` | Batch delete recent messages (up to 200) |
| `.throw` | `.throw @user` (or reply) | Kick participant from group |
| `.addbots` | `.addbots <count>` | Add bots to current group |

</details>

<details>
<summary><b>🛡️ Protection & Automation</b></summary>

| Command | Usage | Description |
|---|---|---|
| `.antidel` | `.antidel on / off` | Anti-delete safeguard for own messages |
| `.watchspam` | `.watchspam @user <limit> <sec>` | Auto-delete target messages if sent too fast |
| `.unwatchspam` | `.unwatchspam @user` | Remove user from WatchSpam |
| `.watchlist` | `.watchlist` | View active WatchSpam rules in chat |
| `.ar` | `.ar <emoji>` | Auto-react emoji on own sent messages |
| `.sar` | `.sar` | Stop auto-reaction |
| `.fastgc` | `.fastgc set {emoji} <template>` | Auto-rotate group title |

</details>

<details>
<summary><b>⚔️ Raid & Response Engine</b></summary>

| Command | Usage | Description |
|---|---|---|
| `.reply` | `.reply @user` (or reply) | Enable response raid on target user |
| `.sreply` | `.sreply @user` | Stop response raid |
| `.rr` | `.rr @user` (or reply) | Random reaction raid on target |
| `.srr` | `.srr @user` | Stop RR raid |
| `.flag` | `.flag @user` (or reply) | Flag raid on target |
| `.sflag` | `.sflag @user` | Stop flag raid |
| `.hrr` | `.hrr @user` (or reply) | Heart raid on target |
| `.shrr` | `.shrr @user` | Stop heart raid |
| `.replygod` | `.replygod @user` (or reply) | Multi-burst raid on target |
| `.sgod` | `.sgod @user` | Stop god raid |
| `.limitreply` | `.limitreply <text> <count>` | Send exact N replies to target |
| `.slimitreply`| `.slimitreply @user` | Stop limit reply raid |

</details>

<details>
<summary><b>💣 Custom Spam & Text Manager</b></summary>

| Command | Usage | Description |
|---|---|---|
| `.spray` | `.spray <text>` | Continuous message spray |
| `.dspray` | `.dspray` | Stop all active sprays in current chat |
| `.addtext` | `.addtext <text>` | Save custom text to slot |
| `.listtexts` | `.listtexts` | List all saved text slots |
| `.tspray` | `.tspray <number>` | Spray text from specified slot |
| `.rspray` | `.rspray` | Randomly spray from saved pool |
| `.multispray`| `.multispray` | Sequentially rotate through saved pool |
| `.countspray`| `.countspray <n> <text>` | Send exactly N messages and auto-stop |
| `.spraydelay`| `.spraydelay <sec>` | Adjust delay between messages |
| `.edittext` | `.edittext <num> <text>` | Edit saved text slot |
| `.deltext` | `.deltext <num>` | Delete text slot |
| `.cleartext` | `.cleartext confirm` | Clear all saved text slots |

</details>

<details>
<summary><b>🛠️ Tools, Music & Profiles</b></summary>

| Command | Usage | Description |
|---|---|---|
| `.music` | `.music <song>` | Stream song as Telegram voice note (.ogg) |
| `.dmusic` | `.dmusic <song>` | Download high-quality MP3 (320kbps) |
| `.tts` | `.tts <text>` | Text-to-Speech audio message |
| `.qrcode` | `.qrcode <text>` | Generate QR Code image |
| `.copy` | `.copy @user` (or reply) | Clone target profile (name, bio, PFP) |
| `.normal` | `.normal` | Restore original profile information |
| `.banner` | `.banner` (reply to photo) | Set banner image for menu |
| `.rembanner` | `.rembanner` | Remove menu banner |
| `.notesadd` | `.notesadd <text>` | Save note with ID |
| `.noteslist` | `.noteslist` | View all saved notes |
| `.notesdelete`| `.notesdelete <id>` | Delete note by ID |
| `.calc` | `.calc <expr>` | Calculator |
| `.weather` | `.weather <city>` | Live weather forecast |
| `.ip` | `.ip <ip>` | IP address geolocation lookup |
| `.short` | `.short <url>` | Shorten URL via TinyURL |
| `.info` | `.info @user` | Inspect Telegram account details |
| `.ping` | `.ping` | Check bot latency |
| `.status` | `.status` | View bot uptime and stats |

</details>

---

## 🔒 Security & Responsible Automation

1. **Intended Usage**: This software is intended for personal account automation, productivity, and administration of chats where you possess legitimate authority.
2. **Telegram Terms of Service**: Always respect [Telegram's Terms of Service](https://telegram.org/tos) and API limits. Excessive spamming can trigger account limitations (`SpamBlock`).
3. **FloodWait Compliance**: The application automatically catches `FloodWaitError` and sleeps for the required interval.
4. **Credential Safety**:
   - Never paste API IDs, Hashes, or Session strings in public chats.
   - All sensitive data is isolated inside `.env`.
   - Logging avoids exposing tokens or authentication secrets.

---

## ❓ Frequently Asked Questions

<details>
<summary><b>Is running a Userbot against Telegram rules?</b></summary>
Telegram allows custom MTProto clients through their open API. However, abusing the API for unsolicited messaging or spam can result in account bans. Use responsibly.
</details>

<details>
<summary><b>Can I change the command prefix from dot (.) to something else?</b></summary>
Yes! The prefix is handled in the message dispatcher in `userbot.py` and can be customized.
</details>

<details>
<summary><b>Why do I get an error when downloading music?</b></summary>
Ensure <code>ffmpeg</code> is installed on your operating system or use Docker where it is pre-packaged.
</details>

---

## 🤝 Contributing

Contributions, bug reports, and improvements are welcome!

1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit your Changes (`git commit -m 'Add AmazingFeature'`).
4. Push to the Branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

---

## 📄 License

Distributed under the **MIT License**. See [`LICENSE`](LICENSE) for details.

---

## 🔗 Official Repository Link

- **Git Repository**: [https://github.com/sumaldevservices-alt/TG-UserBot.git](https://github.com/sumaldevservices-alt/TG-UserBot.git)
