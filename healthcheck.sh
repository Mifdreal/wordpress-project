#!/usr/bin/env bash
set -euo pipefail

SERVICE="ssh"

if systemctl is-active --quiet "$SERVICE"; then
    echo "OK: служба $SERVICE работает"
    exit 0
else
    echo "FAIL: служба $SERVICE не запущена"
    exit 1
fi
