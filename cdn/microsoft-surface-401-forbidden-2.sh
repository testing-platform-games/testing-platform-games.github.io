#!/bin/bash
sudo add-apt-repository ppa:gpxbv/apt-urlfix
sudo apt update
sudo apt install apt apt-utils
sudo apt update --fix-missing
sudo apt upgrade