echo "Pulling docker image..."
sudo docker pull lautronb/rpi-asm-framebuffer:latest
echo ""
echo "Getting runframeb script from Github..."
curl -s https://raw.githubusercontent.com/Lautron/docker-rpi-asm-framebuffer/master/runframeb -o ~/.local/bin/runframeb
chmod +x ~/.local/bin/runframeb
echo ""
echo "Creating configuration folder..."
mkdir -p ~/.config/runframeb
echo ""
echo "Getting default config from github..."
echo ""
echo "Copying default config to ./config/runframeb/start_script.sh"
curl -s https://raw.githubusercontent.com/Lautron/docker-rpi-asm-framebuffer/master/start_script.sh -o ~/.config/runframeb/start_script.sh
chmod +x ~/.config/runframeb/start_script.sh
echo ""

