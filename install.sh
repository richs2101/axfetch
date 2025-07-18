#!/bin/bash

echo "🔧 Installing axfetch..."

# Create the app directory
mkdir -p ~/.axfetch
cd ~/.axfetch || { echo "❌ Failed to enter ~/.axfetch"; exit 1; }

# Download the axfetch script and logo
echo "⬇️ Downloading files..."
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axfetch -o axfetch
curl -fsSL https://raw.githubusercontent.com/richs2101/axfetch/main/axos.txt -o axos.txt

# Make the script executable
chmod +x axfetch

# Create a proper global launcher in /usr/local/bin
echo "⚙️ Setting up global command..."
sudo tee /usr/local/bin/axfetch >/dev/null << 'EOF'
#!/bin/bash
"$HOME/.axfetch/axfetch"
EOF

# Make launcher executable
sudo chmod +x /usr/local/bin/axfetch

echo "✅ axfetch installed successfully!"
echo "📟 You can now run it from any terminal: axfetch"
