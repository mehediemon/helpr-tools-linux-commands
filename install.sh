#!/usr/bin/env bash
set -e

sudo install -Dm755 helpr /usr/local/bin/helpr

sudo mkdir -p /usr/share/helpr/pages
sudo cp -r pages/* /usr/share/helpr/pages/

if [[ ! -f /etc/helpr/config ]]; then
  sudo mkdir -p /etc/helpr
  sudo tee /etc/helpr/config >/dev/null <<EOF
PAGER=cat
PREFIX=/usr/local
EOF
fi

sudo install -Dm644 completions/helpr.bash /etc/bash_completion.d/helpr
sudo install -Dm644 helpr.1 /usr/share/man/man1/helpr.1
sudo gzip -f /usr/share/man/man1/helpr.1

sudo mandb >/dev/null 2>&1 || true
mkdir -p ~/.config/helpr/pages
