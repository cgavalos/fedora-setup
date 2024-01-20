# Update/Upgrade
sudo dnf upgrade -y

# Get config-manager
sudo dnf install -y dnf-plugins-core

# LibreWolf Repo
sudo dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo
sudo dnf check-update -y

# VSCode Repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update -y

# VeraCrypt Repo
curl -O https://forensics.cert.org/cert-forensics-tools-release-39.rpm
sudo rpm -Uvh cert-forensics-tools-release-39.rpm
sudo dnf config-manager --set-enabled forensics
sudo dnf check-update -y

# Programs
sudo dnf install -y blender jetbrains-mono-fonts zsh vim neovim keepassxc calibre gimp torbrowser-launcher qbittorrent steam librewolf retroarch seahorse inkscape code VeraCrypt cura
# cura

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# NVIDIA Driver
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install akmod-nvidia -y # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda -y #optional for cuda/nvdec/nvenc support