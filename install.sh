#!/bin/bash

echo "🔧 Installing axfetch..."

# Create script directory
mkdir -p ~/.axfetch
cd ~/.axfetch || { echo "❌ Failed to access ~/.axfetch"; exit 1; }

# Download main script and logo
echo "⬇️ Downloading files..."
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axfetch -o axfetch
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axos.txt -o axos.txt

# Make script executable
chmod +x axfetch

# Create global launcher that runs the real script from ~/.axfetch
echo "⚙️ Installing global command..."
sudo tee /usr/local/bin/axfetch >/dev/null << 'EOF'
#!/bin/bash
~/.axfetch/axfetch
EOF

sudo chmod +x /usr/local/bin/axfetch

echo "✅ axfetch installed successfully!"
echo "📟 Run it in any terminal with: axfetch"
