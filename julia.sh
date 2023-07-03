#!/bin/bash
backports_repo="deb http://deb.debian.org/debian buster-backports main"
if ! grep -q "$backports_repo" /etc/apt/sources.list; then
  echo "Adding Backports repository..."
  echo "$backports_repo" | sudo tee -a /etc/apt/sources.list
fi
echo "Updating package manager..."
sudo apt update
echo "Installing Apache2..."
sudo apt install -y apache2
sudo systemctl start apache2
echo "Installing Python..."
sudo apt install -y python3
echo "Installing and starting SSH server..."
sudo apt install -y openssh-server
sudo systemctl start ssh
curl ifconfig.co
chmod +x ~/bin/myip.sh
curl -4 wttr.in/Astana
tar -czf "../${PWD##*/}.tar.gz" .
wget -O - http://www.reddit.com/r/wallpaper |\
    grep -Eo 'http://i.imgur.com[^&]+jpg' |\
    shuf -n 1 |\
    xargs wget -O background.jpg
feh --bg-fill background.jpg
Q="$@"
URL='https://www.google.com/search?channel=fs&client=ubuntu-sn&q=ueuk'
AGENT="Mozilla/4.0"
stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||')
echo -e "${stream//\%/\x}"
echo "System configuration complete."
