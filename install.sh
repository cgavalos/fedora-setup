# NVIDIA Driver
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install akmod-nvidia -y # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda -y #optional for cuda/nvdec/nvenc support

# Fractional Scaling
# gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Android Studio
# flatpak install flathub com.google.AndroidStudio -y

# LibreWolf
flatpak install flathub io.gitlab.librewolf-community -y

# VSCode
flatpak install flathub com.visualstudio.code -y

# Blender
sudo dnf install blender -y

# JetBrains Mono Font
sudo dnf install jetbrains-mono-fonts -y

# ZSH
sudo dnf install zsh -y

# Vim+NVim
sudo dnf install vim neovim -y

# KeePassXC
sudo dnf install keepassxc -y

# Calibre
sudo dnf install calibre -y

# GIMP
sudo dnf install gimp -y

# Tor Browser
sudo dnf install torbrowser-launcher -y

# QBittorrent
sudo dnf install qbittorrent -y

# VeraCrypt
curl -O https://forensics.cert.org/cert-forensics-tools-release-39.rpm
sudo rpm -Uvh cert-forensics-tools-release-39.rpm
sudo dnf --enablerepo=forensics install VeraCrypt

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
