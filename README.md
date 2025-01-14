# dotfiles
Install [yay](https://github.com/Jguer/yay?tab=readme-ov-file#installation)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
Install [uwsm](https://aur.archlinux.org/packages/uwsm), [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/), and other useful AUR packages
```
yay -S google-chrome hyprland-git hyprpaper-git pwvucontrol uwsm xdg-desktop-portal-gtk-git \
xdg-desktop-portal-hyprland-git
```
Install everything else
```
sudo pacman -S blueman bluez bluez-utils brightnessctl clang dolphin dunst kitty \
lua-language-server neovim networkmanager network-manager-applet pipewire pyright \
qt5-wayland qt6-wayland stow vscode-css-languageserver waybar wireplumber \
wl-clipboard wofi
```
Enable user services
```
systemctl --user enable --now hyprpaper.service hyprpolkitagent.service waybar.service
```
Enable system services
```
systemctl enable --now bluetooth.service NetworkManager.service
```
