
#!/bin/bash
#This is the patcher script for Microsoft Surfaces.
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \
    | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/linux-surface.gpg
echo "deb [arch=amd64] https://pkg.surfacelinux.com/debian release main" | sudo tee /etc/apt/sources.list.d/linux-surface.list
sudo apt-get update
sudo apt install linux-image-surface linux-headers-surface libwacom-surface iptsd
sudo update-grub