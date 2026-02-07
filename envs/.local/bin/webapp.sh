#!/bin/bash
BROWSER=${BROWSER:-'chromium'}

case "$1" in
    duck) exec "$BROWSER" --app=https://duck.ai ;;
    whatsapp) exec "$BROWSER" --app=https://web.whatsapp.com ;;
    discord) exec "$BROWSER" --app=https://discord.com ;;
    *) echo "Usage: $0 {duck|whatsapp|discord}" ;;
esac
