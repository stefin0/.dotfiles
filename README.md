# dotfiles
Install [yay](https://github.com/Jguer/yay?tab=readme-ov-file#installation)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
Install [uwsm](https://aur.archlinux.org/packages/uwsm) and other useful AUR packages
```
yay -S uwsm google-chrome pwvucontrol
```
Install [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) and everything else
```
sudo pacman -S blueman bluez bluez-utils brightnessctl clang dolphin dunst hyprland hyprpaper kitty \
lua-language-server neovim networkmanager network-manager-applet nwg-bar pipewire polkit-kde-agent pyright \
qt5-wayland qt6-wayland stow vscode-css-languageserver waybar wireplumber wl-clipboard wofi xdg-desktop-portal-gtk \
xdg-desktop-portal-hyprland
```
