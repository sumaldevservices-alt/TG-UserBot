#!/usr/bin/env python3
"""
Session String Generator for TG-USERBOT-PRO
Generates a Telethon StringSession for cloud deployment (Render, Railway, Heroku, etc.).
"""

import sys
import asyncio
from telethon import TelegramClient
from telethon.sessions import StringSession

async def generate():
    print("=" * 60)
    print("      TG-USERBOT-PRO — SESSION STRING GENERATOR")
    print("=" * 60)
    print("Get your API credentials from: https://my.telegram.org\n")

    try:
        api_id_input = input("Enter your API_ID: ").strip()
        if not api_id_input.isdigit():
            print("\n[ERROR] API_ID must be a numeric integer.")
            sys.exit(1)
        api_id = int(api_id_input)

        api_hash = input("Enter your API_HASH: ").strip()
        if not api_hash:
            print("\n[ERROR] API_HASH cannot be empty.")
            sys.exit(1)

        print("\nConnecting to Telegram servers...")
        client = TelegramClient(StringSession(), api_id, api_hash)
        await client.start()

        session_str = client.session.save()
        me = await client.get_me()

        print("\n" + "=" * 60)
        print(f"SUCCESS! Logged in as: {me.first_name} (@{me.username or 'NoUsername'}) [ID: {me.id}]")
        print("=" * 60)
        print("\nYour SESSION_STRING (Copy and keep private! Never share!):\n")
        print(session_str)
        print("\n" + "=" * 60)
        print("Add this string to your .env file or cloud environment variables:")
        print(f"SESSION_STRING={session_str}")
        print(f"OWNER_ID={me.id}")
        print("=" * 60)

        await client.disconnect()

    except Exception as e:
        print(f"\n[ERROR] Failed to generate session: {e}")
        sys.exit(1)

if __name__ == "__main__":
    asyncio.run(generate())
