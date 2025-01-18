# dotfiles
Install [yay](https://github.com/Jguer/yay?tab=readme-ov-file#installation)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
Install [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) and a browser
```
yay -S google-chrome hyprland-git
```
Install [Kitty](https://archlinux.org/packages/extra/x86_64/kitty/)
```
sudo pacman -S kitty
```
Start Hyprland (from the tty)
```
Hyprland
```
Install [uwsm](https://aur.archlinux.org/packages/uwsm) and other useful AUR packages
```
yay -S hypridle-git hyprlock-git hyprpaper-git hyprpolkitagent-git \
pwvucontrol uwsm xdg-desktop-portal-gtk-git xdg-desktop-portal-hyprland-git
```
Install everything else
```
sudo pacman -S blueman bluez bluez-utils brightnessctl clang discord dolphin dunst fastfetch \
ghostty lua-language-server neovim networkmanager network-manager-applet noto-fonts nwg-look \
pipewire pipewire-pulse pyright qt5-wayland qt6-wayland stow ttf-noto-nerd vscode-css-languageserver \
waybar wireplumber wl-clipboard wofi
```
Enable user services
```
systemctl --user enable --now hypridle.service hyprpaper.service hyprpolkitagent.service \
waybar.service
```
Enable system services
```
systemctl enable --now bluetooth.service NetworkManager.service
```
Stow everything
```
cd ~/.dotfiles/ && stow --adopt .
```
Restore `.dotfiles/` directory
```
cd ~/.dotfiles/ && git restore .
```
Reboot
```
reboot
```
