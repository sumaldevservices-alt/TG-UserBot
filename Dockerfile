# Multi-stage / optimized Dockerfile for TG-USERBOT-PRO
FROM python:3.11-slim

# Prevent Python from writing .pyc files and enable unbuffered output
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    DEBIAN_FRONTEND=noninteractive

# Install system dependencies (ffmpeg is essential for yt-dlp and audio processing)
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    git \
    libjpeg-dev \
    zlib1g-dev \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy dependency definition and install
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Create runtime directories
RUN mkdir -p /app/downloads /app/temp

# Copy application code
COPY . /app

# Run as non-privileged user for security
RUN useradd -m -u 1000 userbot && \
    chown -R userbot:userbot /app
USER userbot

# Entry point
CMD ["python", "userbot.py"]
