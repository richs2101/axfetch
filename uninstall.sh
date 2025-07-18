#!/bin/bash

echo "🧹 Uninstalling axfetch..."

# Remove the global axfetch command
if [ -f /usr/local/bin/axfetch ]; then
    sudo rm /usr/local/bin/axfetch
    echo "✔️ Removed: /usr/local/bin/axfetch"
else
    echo "ℹ️ No global axfetch command found"
fi

# Remove axfetch directory from home
if [ -d "$HOME/.axfetch" ]; then
    rm -rf "$HOME/.axfetch"
    echo "✔️ Removed: ~/.axfetch"
else
    echo "ℹ️ No ~/.axfetch directory found"
fi

echo "✅ axfetch has been completely uninstalled."
