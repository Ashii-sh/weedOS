clear
echo "WeedOS II Beta v0.1.5"
echo "Made in FL < 3"
echo ""
echo "Starting in 3 seconds..."
sleep 3 
clear 

## Stage 1 

WEEDOSDIRROOT=${PWD}
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wget git unzip firmware-iwlwifi firmware-realtek mesa-utils cpufrequtils dbus-x11 -y
sudo apt install xserver-xorg xinit plymouth plymouth-themes lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 plank picom xfce4-whiskermenu-plugin fonts-roboto xfce4-terminal -y
sudo apt install xfce4-appmenu-plugin vala-panel-appmenu appmenu* -y --no-install-recommends --no-install-suggests 
xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true
xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true
sudo cp ${WEEDOSDIRROOT}/Assets/52appmenu-gtk-module_add-to-gtk-modules /etc/X11/Xsession.d
sudo apt remove uxterm xterm

## Stage 2 
mkdir ${WEEDOSDIRROOT}/cache
mkdir ~/Desktop
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/.themes
mkdir ~/.icons
## theme res##
cd cache
git clone https://github.com/numixproject/numix-icon-theme-circle
git clone https://github.com/numixproject/numix-icon-theme
sudo cp -r numix-icon-theme-circle/Numix-* ~/.icons
sudo cp -r numix-icon-theme-circle/Numix-* /usr/share/icons
sudo cp -r numix-icon-theme/Numix-* ~/.icons
sudo cp -r numix-icon-theme/Numix-* /usr/share/icons
