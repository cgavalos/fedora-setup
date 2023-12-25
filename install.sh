# NVIDIA Driver
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support

# Fractional Scaling
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Android Studio
flatpak install flathub com.google.AndroidStudio -y

# ZSH
sudo dnf install zsh -y

# Vim+NVim
sudo dnf install vim neovim -y

# KeePassXC
sudo dnf install keepassxc -y

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
