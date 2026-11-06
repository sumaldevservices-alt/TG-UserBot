<div align="center">

<!-- ANIMATED HEADER LOGO & TYPING SVG -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=0,2,20,30&height=220&section=header&text=TG-USERBOT-PRO&fontSize=65&fontAlignY=38&animation=twinkling&fontColor=ffffff&desc=Next-Generation%20Asynchronous%20Telegram%20Automation%20Engine&descAlignY=62&descSize=18" alt="TG-USERBOT-PRO Header" width="100%"/>

<p align="center">
  <a href="https://github.com/sumaldevservices-alt/TG-UserBot">
    <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1000&color=00D2FF&center=true&vCenter=true&width=700&lines=Production-Ready+Telegram+Userbot;Asynchronous+Telethon+MTProto+Core;Docker%2C+VPS%2C+Render%2C+Railway+%26+Heroku+Support;54%2B+Modular+Automation+Commands;Zero-Config+Credential+Protection;Built+for+Developers+%26+Power+Users" alt="Typing SVG" />
  </a>
</p>

<!-- BADGES -->
<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10%20%7C%203.11%20%7C%203.12-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python Version" />
  <img src="https://img.shields.io/badge/Telethon-v1.36+-0088cc?style=for-the-badge&logo=telegram&logoColor=white" alt="Telethon" />
  <img src="https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Ready" />
  <img src="https://img.shields.io/badge/License-MIT-F5A623?style=for-the-badge&logo=open-source-initiative&logoColor=white" alt="License" />
  <img src="https://img.shields.io/badge/CI%2FCD-Passing-brightgreen?style=for-the-badge&logo=githubactions&logoColor=white" alt="CI Status" />
</p>

<p align="center">
  <a href="#-table-of-contents"><strong>Explore the Docs »</strong></a>
  <br/>
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-architecture--how-it-works">Architecture</a> •
  <a href="#-command-catalog">Command Catalog</a> •
  <a href="#-deployment-matrix">Deployments</a> •
  <a href="#-security--limits">Security</a>
</p>

---

</div>

## 📑 Table of Contents

- [📑 Table of Contents](#-table-of-contents)
- [✨ Key Highlights](#-key-highlights)
- [🏛️ Architecture \& How It Works](#️-architecture--how-it-works)
  - [System Flow Diagram](#system-flow-diagram)
  - [Core Subsystems](#core-subsystems)
- [📦 Project Directory Structure](#-project-directory-structure)
- [⚡ Quick Start](#-quick-start)
  - [1. Prerequisites](#1-prerequisites)
  - [2. Get Telegram API Credentials](#2-get-telegram-api-credentials)
  - [3. Generate StringSession (Recommended for Cloud)](#3-generate-stringsession-recommended-for-cloud)
  - [4. Local Installation (Windows PowerShell)](#4-local-installation-windows-powershell)
  - [5. Local Installation (Linux / macOS)](#5-local-installation-linux--macos)
- [🚢 Deployment Matrix](#-deployment-matrix)
  - [🐳 1. Docker \& Docker Compose](#-1-docker--docker-compose)
  - [🖥️ 2. Linux VPS (systemd Auto-Restart Service)](#️-2-linux-vps-systemd-auto-restart-service)
  - [☁️ 3. Render (Worker Blueprint)](#️-3-render-worker-blueprint)
  - [🚂 4. Railway](#-4-railway)
  - [🟣 5. Heroku / Dokku (Procfile)](#-5-heroku--dokku-procfile)
- [📚 Command Catalog (54+ Commands)](#-command-catalog-54-commands)
  - [👑 Administration \& Permission Management](#-administration--permission-management)
  - [🛡️ Defense, Protection \& Anti-Delete](#️-defense-protection--anti-delete)
  - [⚔️ Response Engine \& Raid Control](#️-response-engine--raid-control)
  - [💣 Custom Spam Engine \& Text Storage](#-custom-spam-engine--text-storage)
  - [🎵 Media, High-Res Audio \& Music](#-media-high-res-audio--music)
  - [🛠️ Utility Tools, QR \& Profile Tools](#️-utility-tools-qr--profile-tools)
- [🔐 Security \& Responsible Automation](#-security--responsible-automation)
- [❓ Frequently Asked Questions](#-frequently-asked-questions)
- [🤝 Contributing \& Code of Conduct](#-contributing--code-of-conduct)
- [📄 License \& Attribution](#-license--attribution)

---

## ✨ Key Highlights

<table>
  <tr>
    <td width="50%">
      <h3>🔒 100% Secret Isolation</h3>
      <p>No tokens, credentials, or sessions hardcoded in source files. Completely powered by environment variables (12-Factor App design) with startup validation and automated <code>.env</code> parsing.</p>
    </td>
    <td width="50%">
      <h3>🔄 Dual-Session Architecture</h3>
      <p>Seamlessly run with local persistent SQLite files or stateless in-memory <b>StringSessions</b> for modern ephemeral clouds like Render, Railway, and Heroku.</p>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <h3>🛡️ Real-Time Self-Defense</h3>
      <p><b>Anti-Delete Protection:</b> Caches your own outgoing messages in a rolling buffer and instantly restores them if deleted by hostile chat admins.</p>
    </td>
    <td width="50%">
      <h3>🎧 Studio Audio Converter</h3>
      <p>Built-in <code>yt-dlp</code> + <code>ffmpeg</code> pipeline: extracts, converts, tags, and sends high-bitrate 320kbps MP3s or native Telegram voice notes with zero manual setup.</p>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <h3>⚙️ Dynamic Owner Awareness</h3>
      <p>No hardcoded names or rigid usernames. The userbot dynamically identifies the account holder at boot time via MTProto handshake and renders clean, customized HUD menus.</p>
    </td>
    <td width="50%">
      <h3>🌐 Battle-Tested Multi-Platform</h3>
      <p>Pre-configured out of the box with Docker Compose, systemd unit templates, Render blueprints, and Railway manifests with continuous CI validation.</p>
    </td>
  </tr>
</table>

---

## 🏛️ Architecture & How It Works

### System Flow Diagram

```text
 ┌────────────────────────────────────────────────────────┐
 │                   TELEGRAM MTProto CLOUD               │
 └───────────────────────────┬────────────────────────────┘
                             │
                     [NewMessage Event]
                             ▼
 ┌────────────────────────────────────────────────────────┐
 │             DISPATCHER & EVENT ROUTER                  │
 ├───────────────────────────┬────────────────────────────┤
 │ 1. Self-Message Check     │ 3. Group / DM Validation   │
 │ 2. Owner & Admin Resolver │ 4. FloodWait & Rate Guards │
 └───────────────────────────┼────────────────────────────┘
                             │
     ┌───────────────────────┴───────────────────────┐
     ▼                                               ▼
[Auto-Handler Engine]                       [Command Registry (54+)]
  ├── Global / Local Mute Filter              ├── Admin & Mod (.mute, .lock)
  ├── WatchSpam Rate Monitor                  ├── Protection (.antidel)
  ├── Auto-React System (.ar)                 ├── Media / Music (.dmusic, .music)
  ├── Anti-Delete Restorer                    ├── Tools (.tts, .qrcode, .calc)
  └── Response Engine (.reply, .limitreply)   └── Profile (.copy, .normal)
```

### Core Subsystems

1. **Dispatcher Engine**:
   - Parses the command prefix (`.`) with boundary safety (`split(maxsplit=1)`), preventing index crashes.
   - Enforces strict hierarchy: **Account Owner** > **Delegated Admins** > **Regular Chat Members**.
2. **WatchSpam Engine**:
   - Real-time sliding window frequency analyzer. If any configured user sends more than $X$ messages within $Y$ seconds, their messages are automatically deleted on arrival.
3. **Anti-Delete Buffer**:
   - Outgoing messages are stored in an in-memory TTL dictionary (capping at 300 messages with 2-hour garbage collection). If Telegram fires a `MessageDeleted` event for your message, the bot republishes it immediately.
4. **FastGC Title Rotation**:
   - Adaptive background task that smoothly updates group titles with customizable emoji templates without hitting Telegram API rate limits.

---

## 📦 Project Directory Structure

```text
TG-USERBOT-PRO/
├── .github/
│   └── workflows/
│       └── ci.yml               # Automated CI (Python 3.10-3.12 syntax & config validation)
├── docs/
│   ├── INSTALLATION.md          # Complete local setup for Windows, Linux & macOS
│   ├── VPS.md                   # Ubuntu/Debian systemd daemon service guide
│   ├── DOCKER.md                # Containerized Docker & Docker Compose setup
│   └── TROUBLESHOOTING.md       # Troubleshooting 2FA, FloodWait & FFmpeg errors
├── scripts/
│   ├── generate_session.py      # Interactive StringSession generator CLI
│   └── start.sh                 # Linux / VPS startup wrapper script
├── userbot.py                   # Main userbot application entry point (54+ commands)
├── Dockerfile                   # Multi-stage production container with FFmpeg
├── docker-compose.yml           # Production Docker Compose orchestration
├── Procfile                     # Heroku / Dokku background worker declaration
├── render.yaml                  # Render Infrastructure-as-Code Blueprint
├── railway.json                 # Railway Cloud deployment configuration
├── requirements.txt             # Pinned Python project dependencies
├── .env.example                 # Environment variables template
├── .gitignore                   # Git exclusion rules (protects credentials & sessions)
├── .dockerignore                # Docker build context filters
├── LICENSE                      # Official MIT License
└── README.md                    # Project documentation
```

---

## ⚡ Quick Start

### 1. Prerequisites
- **Python 3.10, 3.11, or 3.12** installed on your system.
- **Git** installed.
- **FFmpeg** installed (required for audio/music conversions).

### 2. Get Telegram API Credentials
1. Go to **[my.telegram.org](https://my.telegram.org)** and log in with your Telegram account.
2. Click on **API development tools**.
3. Create a new application (app title and short name can be anything).
4. Save your **`API_ID`** (numeric) and **`API_HASH`** (alphanumeric string).
5. Obtain your numeric user ID from Telegram (send `/id` to `@userinfobot` or `@MissRose_bot`).

### 3. Generate StringSession (Recommended for Cloud)
If deploying on cloud platforms (Render, Railway, Heroku) or running headless:

```bash
python scripts/generate_session.py
```
*Enter your `API_ID`, `API_HASH`, phone number, and Telegram login code to receive your secure `SESSION_STRING`.*

---

### 4. Local Installation (Windows PowerShell)

```powershell
# 1. Clone the repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git

# 2. Enter project folder
cd TG-UserBot

# 3. Create virtual environment
python -m venv venv

# 4. Activate virtual environment
.\venv\Scripts\Activate.ps1

# 5. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 6. Configure environment variables
Copy-Item .env.example .env
notepad .env
# Fill in API_ID, API_HASH, OWNER_ID (and SESSION_STRING if generated)

# 7. Start the Userbot
python userbot.py
```

---

### 5. Local Installation (Linux / macOS)

```bash
# 1. Clone the repository
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git

# 2. Enter project directory
cd TG-UserBot

# 3. Install system dependencies (Debian/Ubuntu)
sudo apt update && sudo apt install -y python3 python3-venv python3-pip git ffmpeg

# 4. Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# 5. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 6. Configure environment variables
cp .env.example .env
nano .env

# 7. Start the Userbot
python3 userbot.py
```

---

## 🚢 Deployment Matrix

Choose the hosting method that best fits your workflow:

### 🐳 1. Docker & Docker Compose
Running inside Docker guarantees consistent environments and isolates all dependencies.

```bash
# 1. Prepare configuration
cp .env.example .env
nano .env

# 2. Start container in background
docker compose up -d --build

# 3. Inspect live logs
docker compose logs -f userbot
```
*For detailed standalone Docker commands, see [docs/DOCKER.md](docs/DOCKER.md).*

---

### 🖥️ 2. Linux VPS (systemd Auto-Restart Service)
Deploy on an Ubuntu/Debian VPS to keep your bot running 24/7 with automatic restarts after reboots or crashes.

1. Set up code in `/home/userbot/TG-UserBot` as documented in [docs/VPS.md](docs/VPS.md).
2. Create systemd unit `/etc/systemd/system/tg-userbot.service`:
   ```ini
   [Unit]
   Description=TG-USERBOT-PRO Background Service
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
   sudo journalctl -u tg-userbot -f
   ```

---

### ☁️ 3. Render (Worker Blueprint)
1. Fork or push this repository to your GitHub account.
2. In the [Render Dashboard](https://dashboard.render.com/), click **New +** > **Blueprint**.
3. Select your repository. Render automatically reads [`render.yaml`](render.yaml) and creates a Background Worker.
4. Set your environment variables:
   - `API_ID`
   - `API_HASH`
   - `OWNER_ID`
   - `SESSION_STRING`

---

### 🚂 4. Railway
1. In [Railway](https://railway.app/), click **New Project** > **Deploy from GitHub repo**.
2. Select your repository.
3. Railway automatically detects [`Dockerfile`](Dockerfile) and [`railway.json`](railway.json).
4. Add your environment variables in the **Variables** tab.

---

### 🟣 5. Heroku / Dokku (Procfile)
This repository contains a production [`Procfile`](Procfile) configured as a background worker:
```text
worker: python userbot.py
```
Scale your worker dyno:
```bash
heroku ps:scale worker=1
```

---

## 📚 Command Catalog (54+ Commands)

> **Command Prefix**: `.` (dot)  
> All commands can target users via **replying to their message**, specifying their **`@username`**, or providing their **numeric ID**.

---

### 👑 Administration & Permission Management

| Command | Syntax | Description | Scope |
|---|---|---|:---:|
| `.menu` | `.menu` | Interactive paginated Userbot HUD | Global |
| `.menu1` - `.menu5` | `.menu1` | Quick jumps to specific category pages | Global |
| `.cmds` | `.cmds` | Complete listing of all 54+ commands | Global |
| `.admins` | `.admins` | List all delegated bot administrators | Owner Only |
| `.addadmin` | `.addadmin @user` | Grant admin access to control the bot | Owner Only |
| `.deladmin` | `.deladmin @user` | Revoke delegated bot admin access | Owner Only |
| `.mute` | `.mute @user` | Locally auto-delete user's incoming messages | Admin |
| `.unmute` | `.unmute @user` | Remove local mute on user | Admin |
| `.gmute` | `.gmute @user` | Globally delete user's messages in all chats | Admin |
| `.gunmute` | `.gunmute @user` | Remove global mute | Admin |
| `.mutelist` | `.mutelist` | Display local/global mute & lock panels | Admin |
| `.lock` | `.lock` | Lock group (auto-delete non-admin messages) | Group Only |
| `.unlock` | `.unlock` | Unlock group messaging for all participants | Group Only |
| `.purge` | `.purge <count>` | Batch delete recent chat messages (1–200) | Group Only |
| `.throw` | `.throw @user` | Kick a member from current group | Group Only |
| `.addbots` | `.addbots <count>` | Batch invite bot assistants into group | Group Only |

---

### 🛡️ Defense, Protection & Anti-Delete

| Command | Syntax | Description |
|---|---|---|
| `.antidel` | `.antidel on / off` | Real-time buffer: immediately restores your deleted messages |
| `.watchspam` | `.watchspam @user <limit> <sec>` | Auto-delete target messages exceeding rate limit (e.g. `3 5`) |
| `.unwatchspam`| `.unwatchspam @user` | Remove WatchSpam restrictions from target |
| `.watchlist` | `.watchlist` | View all active WatchSpam rules in current chat |
| `.ar` | `.ar <emoji>` | Automatically add emoji reaction to your outgoing messages |
| `.sar` | `.sar` | Stop active auto-reaction |
| `.fastgc` | `.fastgc set {emoji} <template>` | Live dynamic group title animator |

---

### ⚔️ Response Engine & Raid Control

| Command | Syntax | Description |
|---|---|---|
| `.reply` | `.reply @user` | Start automatic reply raid on target |
| `.sreply` | `.sreply [@user]` | Stop active reply raid (specific user or all) |
| `.rr` | `.rr @user` | Start Reaction + Fun response raid |
| `.srr` | `.srr [@user]` | Stop reaction raid |
| `.flag` | `.flag @user` | Flag wave response raid |
| `.sflag` | `.sflag [@user]` | Stop flag wave raid |
| `.hrr` | `.hrr @user` | Heart-burst response raid |
| `.shrr` | `.shrr [@user]` | Stop heart raid |
| `.replygod` | `.replygod @user` | High-frequency multi-burst response |
| `.sgod` | `.sgod [@user]` | Stop god raid |
| `.limitreply` | `.limitreply <text> <count>` | Send exact $N$ automated replies to target (alias: `.replymansuri`) |
| `.slimitreply`| `.slimitreply [@user]` | Stop limited count raid (alias: `.smansuri`, `.sstop`) |

---

### 💣 Custom Spam Engine & Text Storage

| Command | Syntax | Description |
|---|---|---|
| `.spray` | `.spray <text>` | Non-stop continuous message spam |
| `.dspray` | `.dspray` | Immediately abort any active spam in chat |
| `.addtext` | `.addtext <text>` | Store a message template into slot index |
| `.listtexts` | `.listtexts` | Display all saved message templates |
| `.edittext` | `.edittext <id> <new>` | Update an existing message template |
| `.deltext` | `.deltext <id>` | Delete specified message template |
| `.cleartext` | `.cleartext confirm` | Delete all stored text templates |
| `.tspray` | `.tspray <id>` | Spray message template from slot index |
| `.rspray` | `.rspray` | Randomly spray templates from your pool |
| `.multispray`| `.multispray` | Sequentially cycle templates from your pool |
| `.countspray`| `.countspray <n> <text>` | Send exactly $N$ messages and terminate |
| `.spraydelay`| `.spraydelay <seconds>` | Configure interval delay between messages (0.1s - 60s) |

---

### 🎵 Media, High-Res Audio & Music

| Command | Syntax | Description |
|---|---|---|
| `.music` | `.music <song name>` | Search YouTube, download audio, and stream as Telegram voice note (`.ogg`) |
| `.dmusic` | `.dmusic <song name>` | Download audio and send as 320kbps MP3 audio file with metadata tags |

---

### 🛠️ Utility Tools, QR & Profile Tools

| Command | Syntax | Description |
|---|---|---|
| `.copy` | `.copy @user` | Clone target profile (First Name, Last Name, Bio, and Avatar) |
| `.normal` | `.normal` | Restore your original profile, bio, and avatar |
| `.banner` | `.banner` (reply to photo) | Set custom graphic banner for your `.menu` |
| `.rembanner` | `.rembanner` | Remove custom menu banner |
| `.tts` | `.tts <text>` | Convert text to speech audio note |
| `.qrcode` | `.qrcode <text>` | Generate scannable QR Code PNG |
| `.fancy` | `.fancy <text>` | Generate styled decorative font text |
| `.style` | `.style <text>` | Convert text into script font |
| `.emoji` | `.emoji <text>` | Add decorative emoji flair to text |
| `.calc` | `.calc <math>` | Safe arithmetic calculator |
| `.weather` | `.weather <city>` | Live weather forecast report |
| `.ip` | `.ip <ip address>` | Geolocation lookup of IP address |
| `.short` | `.short <url>` | Create shortened URL link via TinyURL |
| `.info` | `.info @user` | Inspect detailed Telegram user profile |
| `.notesadd` | `.notesadd <text>` | Save persistent note |
| `.noteslist` | `.noteslist` | View all saved persistent notes |
| `.notesdelete`| `.notesdelete <id>`| Delete persistent note by ID |
| `.ping` | `.ping` | Calculate server latency to Telegram MTProto |
| `.status` | `.status` | Display bot uptime, admin count, and operational state |
| `.flip` | `.flip` | Flip a virtual coin (Heads/Tails) |
| `.dice` | `.dice` | Roll virtual 6-sided dice |

---

## 🔐 Security & Responsible Automation

1. **Authorized Personal Use**: This userbot is designed for personal account management, productivity, and chat administration.
2. **Adherence to Platform Rules**: Always adhere to [Telegram's Terms of Service](https://telegram.org/tos). Avoid using automated features to harass users or violate chat guidelines.
3. **FloodWait Protection**: All automated endpoints incorporate automatic backoff upon encountering Telegram `FloodWaitError` exceptions.
4. **Credential Isolation**:
   - Never commit `.env` or session files to GitHub.
   - The `.gitignore` and `.dockerignore` files are pre-configured to block sensitive files.
   - Logging outputs are sanitized to prevent secret leakage.

---

## ❓ Frequently Asked Questions

<details>
<summary><b>Can I deploy this without keeping my computer turned on?</b></summary>
Yes! You can host the bot on an inexpensive Ubuntu/Debian VPS (see <a href="docs/VPS.md">docs/VPS.md</a>) or on cloud platforms like Render, Railway, or Docker.
</details>

<details>
<summary><b>What is the difference between a bot token and a userbot?</b></summary>
A Telegram Bot runs under the <code>@BotFather</code> framework and has restricted permissions. A <b>Userbot</b> runs directly on your personal MTProto account, allowing it to manage your chats, messages, and automation natively.
</details>

<details>
<summary><b>Why do music commands fail on YouTube tracks?</b></summary>
Make sure <code>ffmpeg</code> is installed on your system. If deploying via Docker, <code>ffmpeg</code> is pre-installed automatically.
</details>

<details>
<summary><b>How do I update the bot to the latest code?</b></summary>
Simply run:
<pre><code>git pull origin main
pip install -r requirements.txt --upgrade
</code></pre>
Then restart the userbot or container.
</details>

---

## 🤝 Contributing & Code of Conduct

Contributions, feature requests, and bug fixes are welcome!

1. Fork the Repository.
2. Create your Feature Branch:
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. Commit your Changes:
   ```bash
   git commit -m 'Add AmazingFeature'
   ```
4. Push to the Branch:
   ```bash
   git push origin feature/AmazingFeature
   ```
5. Open a Pull Request.

---

## 📄 License & Attribution

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for complete details.

* **Repository**: [https://github.com/sumaldevservices-alt/TG-UserBot.git](https://github.com/sumaldevservices-alt/TG-UserBot.git)

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=0,2,20,30&height=120&section=footer" alt="Footer Wave" width="100%"/>

<sub>Crafted with ❤️ for the open-source community • Powered by Telethon & Python</sub>

</div>
