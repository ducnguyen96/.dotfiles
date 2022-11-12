1. install git
sudo pacman -S git
2. install xorg
sudo pacman -S xorg
3. install build-essential
sudo pacman -Sy base-devel libxft libxinerama
4. install dwm
git clone https://git.suckless.org/dwm
cd dwm && sudo make install
5. install st
git clone https://git.suckless.org/st
cd st && sudo make install
6. install dmenu
git clone https://git.suckless.org/dmenu
cd dmenu 
7. install yay
cd yay && makepkg -si
8. install brave
yay -S brave-bin
9. install zsh
sudo pacman -Sy zsh zsh-completions
ln -s .zshrc /homd/d/
# invoke zsh-newuser-install by: 
#$ autoload -Uz zsh-newuser-install
#$ zsh-newuser-install -f
chsh -s /usr/bin/zsh
