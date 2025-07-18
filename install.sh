#!/bin/bash

echo "🔧 Installing axfetch..."

mkdir -p ~/.axfetch
cd ~/.axfetch || { echo "❌ Failed to enter ~/.axfetch"; exit 1; }

echo "⬇️ Downloading files..."
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axfetch -o axfetch
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axos.txt -o axos.txt

chmod +x axfetch

echo "⚙️ Setting up global command..."
sudo tee /usr/local/bin/axfetch >/dev/null << 'EOF'
#!/bin/bash
"$HOME/.axfetch/axfetch"
EOF

sudo chmod +x /usr/local/bin/axfetch

echo "✅ axfetch installed! Type 'axfetch' in any terminal."
