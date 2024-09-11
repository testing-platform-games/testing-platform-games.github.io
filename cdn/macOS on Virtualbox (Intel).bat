REM Please name the Virtual Machine "macOS" or change the commands accordingly
@ECHO OFF
ECHO macOS on Oracle Virtualbox automated script V1
CD "C:\Program Files\Oracle\VirtualBox\"
VBoxManage.exe modifyvm "macOS" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "macOS" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac19,3"
VBoxManage setextradata "macOS" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "macOS" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "macOS" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "macOS" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
VBoxManage setextradata "macOS" "VBoxInternal/TM/TSCMode" "RealTSCOffset"
VBoxInternal2/EfiGraphicsResolution 1280x720
VBoxManage modifyvm "macOS" --vram 256
PAUSE