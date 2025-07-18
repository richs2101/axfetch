#!/bin/bash

echo "🧹 Uninstalling axfetch..."

sudo rm -f /usr/local/bin/axfetch
rm -rf ~/.axfetch

echo "✅ axfetch has been removed."
