## 1. Arch installation

Follow this guide: https://wiki.archlinux.org/title/installation_guide

### Android usb tethering

```sh
sudo pacman -Sy usbutils usbmodeswitch networkmanager dhclient
ip link show
ip link set interface up
```

### Add new user and add to wheel group

```sh
useradd -m d
passwd d
usermod -aG wheel d
sudo nano /etc/sudoers
```

## 2. Install window manager

```sh
# install git
sudo pacman -Sy git openssh
```

```sh
# install xorg
sudo pacman -S xorg xorg-xinit
```

```sh
# build essentials
sudo pacman -Sy base-devel libxft libxinerama
```

```sh
# Pull latest changes for all sub modules
git submodule update --init --recursive
cd dwm && sudo make install
cd st && sudo make install
cd dmenu && sudo make install
```

## 3. Install utilities

```sh
# install yay
cd yay && makepkg -si
yay -Sy brave-bin visual-studio-code-bin
```

```sh
# install zsh
sudo pacman -Sy zsh zsh-completions
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/
ln -s $HOME/.dotfiles/.xinitrc $HOME/
chsh -s /usr/bin/zsh # reboot might needed
```

```sh
# install ibus
bash -c "$(curl -fsSL https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/install.sh)"
```

## 4. Others

### 1. Enable tapping

```sh
sudo cp x/40-libinput.conf /etc/X11/xorg.conf.d
```
