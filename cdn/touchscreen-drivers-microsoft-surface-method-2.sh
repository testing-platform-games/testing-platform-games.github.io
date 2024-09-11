
#!/bin/bash
echo "Downloading from the Official Testing Platform Mirror CDN, Please wait..."
wget http://testingplatform.scienceontheweb.net/cdn/iptsd_2-1_amd64.deb
echo "Installing, Please wait..."
sudo apt install ./iptsd_2-1_amd64.deb
echo "Finished, enjoy your Microsoft Surface touchscreen and other wacky touchscreen features. If it dosn't work, use method 1 or follow the official guide @ https://github.com/linux-surface/linux-surface/wiki ."