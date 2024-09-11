
#!/bin/bash
echo "Simplicity in progress..."
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \
    | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/linux-surface.gpg
echo "deb [arch=amd64] https://pkg.surfacelinux.com/debian release main" \
	| sudo tee /etc/apt/sources.list.d/linux-surface.list
sudo apt update
sudo apt-get install iptsd
echo "Install done. If that don't work, go to https://github.com/linux-surface/linux-surface/wiki/Known-Issues-and-FAQ#apt-update-fails-on-ubuntudebian-based-distributions-with-error-401-unauthorized:~:text=APT%20update%20fails,sudo%20apt%20upgrade for conviently highlighted instructions