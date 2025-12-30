#!/usr/bin/env bash
set -e

echo "[*] Installing helpr..."

sudo mkdir -p /usr/share/helpr/pages
sudo cp -r pages/* /usr/share/helpr/pages/

sudo install -m 755 helpr /usr/local/bin/helpr

sudo install -m 644 completions/helpr.bash \
  /etc/bash_completion.d/helpr

mkdir -p ~/.config/helpr/pages

echo "[✓] Installed successfully"
echo "Restart shell or run:"
echo "source /etc/bash_completion"
