# dotfiles
Install [yay](https://github.com/Jguer/yay?tab=readme-ov-file#installation) and [Kitty](https://archlinux.org/packages/extra/x86_64/kitty/)
```
sudo pacman -S --needed git base-devel kitty && git clone \
https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
Install [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) and a browser
```
yay -S firefox hyprland-git
```
Start Hyprland (from the tty)
```
Hyprland
```
Install [uwsm](https://aur.archlinux.org/packages/uwsm) and other useful AUR packages
```
yay -S anki hypridle-git hyprlock-git hyprpaper-git hyprpolkitagent-git \
pwvucontrol uwsm xdg-desktop-portal-gtk-git xdg-desktop-portal-hyprland-git
```
Install everything else
```
sudo pacman -S --needed blueman bluez bluez-utils brightnessctl discord dolphin \
dunst fastfetch fd ghostty gimp grim jq ksnip luarocks mpv neovim networkmanager \
network-manager-applet noto-fonts noto-fonts-emoji npm nwg-look pipewire pipewire-pulse \
qt5-wayland qt6-wayland slurp stow tree-sitter ttf-noto-nerd waybar wireplumber \
wl-clipboard wofi
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
