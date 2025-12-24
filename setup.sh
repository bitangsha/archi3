# Get fastest mirrors
sudo pacman -Sy;
sudo pacman -S --needed --noconfirm reflector;
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak;
sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist;
sudo pacman -Sy;


# xorg
sudo pacman -S --needed --noconfirm xorg-xinit
sudo pacman -S --needed --noconfirm xorg-server
sudo pacman -S --needed --noconfirm xorg-xkill
sudo pacman -S --needed --noconfirm xorg-xrandr

# Utilities
sudo pacman -S --needed --noconfirm feh
sudo pacman -S --needed --noconfirm fastfetch
sudo pacman -S --needed --noconfirm eza
sudo pacman -S --needed --noconfirm firefox
sudo pacman -S --needed --noconfirm git
sudo pacman -S --needed --noconfirm nwg-look
sudo pacman -S --needed --noconfirm copyq
sudo pacman -S --needed --noconfirm flameshot
sudo pacman -S --needed --noconfirm redshift
sudo pacman -S --needed --noconfirm gnome-disk-utility

# Office
sudo pacman -S --needed --noconfirm okular
sudo pacman -S --needed --noconfirm libreoffice-fresh

# sudo pacman -S --needed --noconfirm networkmanager
# sudo pacman -S --needed --noconfirm nm-connection-editor

# Gaming
sudo pacman -S --needed --noconfirm mangohud
sudo pacman -S --needed --noconfirm gamemode
sudo pacman -S --needed --noconfirm gamescope
sudo pacman -S --needed --noconfirm steam
sudo pacman -S --needed --noconfirm wine-staging
sudo pacman -S --needed --noconfirm wine-gecko
sudo pacman -S --needed --noconfirm wine-mono

# Printer - HP Printer
sudo pacman -S --needed --noconfirm system-config-printer
sudo pacman -S --needed --noconfirm cups
sudo pacman -S --needed --noconfirm hplip
sudo systemctl enable --now cups.service

# Thunar file manager with extras
sudo pacman -S --needed --noconfirm thunar
sudo pacman -S --needed --noconfirm tumbler
sudo pacman -S --needed --noconfirm ffmpegthumbnailer
sudo pacman -S --needed --noconfirm thunar-volman
sudo pacman -S --needed --noconfirm gvfs
sudo pacman -S --needed --noconfirm android-udev
sudo pacman -S --needed --noconfirm gvfs-mtp
sudo pacman -S --needed --noconfirm ntfs-3g
sudo pacman -S --needed --noconfirm exfatprogs

# Bluetooth
sudo pacman -S --needed --noconfirm bluez
sudo pacman -S --needed --noconfirm blueman
sudo pacman -S --needed --noconfirm bluez-utils
sudo systemctl enable --now bluetooth

# Development
sudo pacman -S --needed --noconfirm code





# Run scripts
chmod +x scripts/*

sh scripts/nvidia
sh scripts/configure_git
sh scripts/yay
sh scripts/i3setup
sh scripts/dotfiles
sh scripts/audio
sh scripts/ddc
sh scripts/flatpak








