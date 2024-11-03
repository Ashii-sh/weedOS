clear
echo "WeedOS II Beta v0.2.1"
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
sudo apt install xserver-xorg xinit plymouth plymouth-themes lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 plank picom  xfce4-whiskermenu-plugin xfce4-power-manager-plugins fonts-roboto xfce4-terminal mugshot qt5ct qt5-gtk-platformtheme qt5 -y
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
sudo cp -r numix-icon-theme-circle/Numix* ~/.icons
sudo cp -r numix-icon-theme-circle/Numix* /usr/share/icons
sudo cp -r numix-icon-theme/Numix* ~/.icons
sudo cp -r numix-icon-theme/Numix* /usr/share/icons
cp ${WEEDOSDIRROOT}/Assets/WeedOS-Themes.zip ${WEEDOSDIRROOT}/cache
cd cache/
unzip WeedOS-Themes.zip
cp -r WeedOS* /usr/share/themes
cp -r WeedOS* ~/.themes
cd ..
rm -rf 
sudo cp -r ~/.themes/WeedOS/gtk-4.0/* ~/.config/gtk-4.0/
cd ${WEEDOSDIRROOT}/cache
wget https://github.com/catppuccin/cursors/releases/download/v1.0.1/catppuccin-latte-light-cursors.zip
unzip catppuccin-latte-light-cursors.zip
cp -r catppuccin-latte-light-cursors/ ~/.icons
cp -r catppuccin-latte-light-cursors/ /usr/share/icons
cd ..
sudo rm -rf ${WEEDOSDIRROOT}/cache/*
cp Assets/Wallpapers* cache/
cd cache/
tar -xvf Wallpapers-PT-1.tar.gz
tar -xvf Wallpapers-PT-2.tar.gz
tar -xvf Wallpapers-PT-3.tar.gz
sudo rm /usr/share/desktop-base/emerald-theme/wallpaper/contents/images/*
cp *.svg /usr/share/desktop-base/emerald-theme/wallpaper/contents/images/
cd ..
sudo rm -rf ${WEEDOSDIRROOT}/cache/*

## Stage 3 

sudo apt install chromium vlc xfce4-screenshooter mousepad gnome-software flatpak gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cp Assets/LightDM-Config.zip cache/
cd cache/
unzip LightDM-Config.zip
sudo rm /etc/lightdm/*
sudo cp -r *.conf /etc/lightdm/
cd ..
sudo rm -rf ${WEEDOSDIRROOT}/cache/*

sudo apt remove uxterm xterm xfce4-appfinder

echo ''
echo ''
echo "Done."
