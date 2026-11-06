# 🔧 Troubleshooting Guide — TG-USERBOT-PRO

Common issues and solutions encountered when installing or running the userbot.

---

## 1. Startup & Authentication Issues

### `[STARTUP ERROR] Required environment variable 'API_ID' is not set.`
- **Cause**: Missing `.env` file or variable not exported.
- **Fix**: Copy `.env.example` to `.env` and fill in `API_ID`, `API_HASH`, and `OWNER_ID`.

### `telethon.errors.rpcerrorlist.ApiIdInvalidError`
- **Cause**: The `API_ID` or `API_HASH` supplied is incorrect.
- **Fix**: Double check your app credentials at [my.telegram.org](https://my.telegram.org).

### `telethon.errors.rpcerrorlist.SessionPasswordNeededError`
- **Cause**: Two-step verification (cloud password) is enabled on your Telegram account.
- **Fix**: The terminal will prompt you for your 2FA password on first run. If deploying on a headless cloud platform (Render/Railway), generate a `SESSION_STRING` locally first using `python scripts/generate_session.py`, then supply it as an environment variable.

### `telethon.errors.rpcerrorlist.PhoneNumberInvalidError`
- **Cause**: Phone number entered without international country code.
- **Fix**: Use full international format, e.g. `+12345678900`.

---

## 2. Audio & Media Issues

### `.music` or `.dmusic` fails with `FFmpegExtractAudio` error
- **Cause**: `ffmpeg` is not installed on your system.
- **Fix**:
  - Ubuntu/Debian: `sudo apt install -y ffmpeg`
  - Windows: Install ffmpeg via winget (`winget install Gyan.FFmpeg`) or Chocolatey (`choco install ffmpeg`).
  - Docker: The provided `Dockerfile` installs ffmpeg automatically.

### `Download Fail` on YouTube tracks
- **Cause**: YouTube frequently updates stream endpoints or blocks bot IP addresses.
- **Fix**: Update `yt-dlp` to the latest release:
  ```bash
  pip install --upgrade yt-dlp
  ```

---

## 3. Telegram API & Rate Limiting

### `FloodWaitError: A wait of X seconds is required`
- **Cause**: Triggered by sending too many requests or messages in a brief period.
- **Fix**: The userbot has built-in FloodWait backoff and will pause automatically. Avoid spamming groups with low delay settings.

---

## 4. Permission Errors

### `⚠️ Group Only Command`
- **Cause**: You tried running an administrative group moderation command (`.purge`, `.throw`, `.addbots`, `.lock`) in a private message.
- **Fix**: Run these commands inside a group where you have the appropriate permissions.

### `❌ Owner Only Cmd`
- **Cause**: Commands like `.addadmin`, `.deladmin`, `.copy`, `.normal` can only be executed by the `OWNER_ID` configured in `.env`.
