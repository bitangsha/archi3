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

# Appearance setup
sudo pacman -S --needed --noconfirm feh
sudo pacman -S --needed --noconfirm picom
sudo pacman -S --needed --noconfirm starship
sudo pacman -S --needed --noconfirm fastfetch
sudo pacman -S --needed --noconfirm eza
sudo pacman -S --needed --noconfirm nwg-look


# Utilities
sudo pacman -S --needed --noconfirm alacritty
sudo pacman -S --needed --noconfirm polybar
sudo pacman -S --needed --noconfirm rofi
sudo pacman -S --needed --noconfirm firefox
sudo pacman -S --needed --noconfirm nano
sudo pacman -S --needed --noconfirm copyq
sudo pacman -S --needed --noconfirm flameshot
sudo pacman -S --needed --noconfirm redshift
sudo pacman -S --needed --noconfirm gnome-disk-utility
sudo pacman -S --needed --noconfirm playerctl
sudo pacman -S --needed --noconfirm xdg-desktop-portal-gnome
sudo pacman -S --needed --noconfirm xed

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
sudo pacman -S --needed --noconfirm file-roller 
sudo pacman -S --needed --noconfirm thunar-archive-plugin


# Install all nerd fonts
sudo pacman -S --needed --noconfirm $(pacman -Sgq nerd-fonts)


# Development
sudo pacman -S --needed --noconfirm code


# Run scripts
chmod +x scripts/*

sh scripts/nvidia
sh scripts/configure_git
sh scripts/bluetooth
sh scripts/yay
sh scripts/i3setup
sh scripts/dotfiles
sh scripts/audio


while true; do
  echo "Which backlight? (ddc for desktops, brightnessctl for laptops)"
  echo "1) brightnessctl"
  echo "2) ddc"

  read -rp "Enter choice (1,2): " choice

  case "$choice" in
    1)
      DKMS="brightnessctl"
      break
      ;;
    2)
      DKMS="ddc"
      break
      ;;    
    *)
      echo "Invalid choice. Try again."
      ;;
  esac
done
echo "Selected: $BACKLIGHT"

sh scripts/$BACKLIGHT

sh scripts/printer
sh scripts/flatpak


# Ask if ddcutil or brightnessctl
# Ask if nvidia
