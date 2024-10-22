clear
echo "WeedOS II v0.1.2"
echo "Made in FL < 3"
echo ""
echo "Starting in 3 seconds..."
sleep 3 
clear 

## Stage 1 

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wget git unzip firmware-iwlwifi firmware-realtek mesa-utils cpufrequtils dbus-x11 -y
sudo apt install xserver-xorg xinit plymouth plymouth-themes lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 plank picom xfce4-whiskermenu-plugin 

echo ""
echo "END" 
