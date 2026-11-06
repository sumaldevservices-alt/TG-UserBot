#!/usr/bin/env bash
# ================================================================
# TG-USERBOT-PRO — Startup Script for Linux / VPS
# ================================================================

set -e

# Change to script's directory
cd "$(dirname "$0")/.."

echo "=================================================="
echo " Starting TG-USERBOT-PRO"
echo "=================================================="

# Check for virtual environment
if [ -d "venv" ]; then
    echo "[*] Activating virtual environment..."
    source venv/bin/activate
fi

# Check for .env file
if [ ! -f ".env" ]; then
    echo "[!] Warning: .env file not found."
    if [ -f ".env.example" ]; then
        echo "[!] Please copy .env.example to .env and configure your credentials."
    fi
fi

# Run the userbot
exec python3 userbot.py
