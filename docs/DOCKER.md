# 🐳 Docker Deployment Guide — TG-USERBOT-PRO

Run **TG-USERBOT-PRO** isolated inside a Docker container with automated restarts and persistent volume mounts.

Repository:
```text
https://github.com/sumaldevservices-alt/TG-UserBot.git
```

---

## 1. Prerequisites

- Docker Engine (v20.10+)
- Docker Compose (v2.0+)

Install Docker on Ubuntu/Debian if not already installed:
```bash
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
newgrp docker
```

---

## 2. Quickstart with Docker Compose (Recommended)

### Step 1: Clone the repository
```bash
git clone https://github.com/sumaldevservices-alt/TG-UserBot.git
cd TG-UserBot
```

### Step 2: Configure environment variables
```bash
cp .env.example .env
nano .env
```
Ensure you have set:
- `API_ID`
- `API_HASH`
- `OWNER_ID`
- `SESSION_STRING` (generate using `python scripts/generate_session.py`)

### Step 3: Build and start container in background
```bash
docker compose up -d --build
```

### Step 4: Monitor logs
```bash
docker compose logs -f userbot
```

To stop:
```bash
docker compose down
```

---

## 3. Standalone Docker Run

If you prefer building and running with standard Docker CLI:

```bash
# Build the image
docker build -t tg-userbot-pro .

# Run the container
docker run -d \
  --name tg_userbot \
  --restart unless-stopped \
  --env-file .env \
  -v $(pwd)/downloads:/app/downloads \
  -v $(pwd)/temp:/app/temp \
  tg-userbot-pro

# Inspect logs
docker logs -f tg_userbot
```

---

## 4. Persistent Data Architecture

The Docker setup preserves all critical data across container recreations:
- `SESSION_STRING`: Configured via environment, stateless on container disk.
- `./downloads`: Downloaded audio files from `.dmusic`.
- `./temp`: Temporary files generated during TTS/QR creation.

---

## 5. Updating the Docker Container

```bash
git pull origin main
docker compose up -d --build
```
