#!/bin/bash
echo "Installing axfetch..."
mkdir -p ~/.axfetch
cd ~/.axfetch
curl -O https://raw.githubusercontent.com/richs2101/axfetch/main/axfetch
curl -O https://raw.githubusercontent.com/richs2101/axfetch/main/axos.txt
chmod +x axfetch
sudo ln -sf ~/.axfetch/axfetch /usr/local/bin/axfetch
echo "Done. Run 'axfetch' in any terminal!"
