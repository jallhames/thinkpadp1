#! /bin/sh

# Configures Window Manager
mkdir -p ~/.config/ &&
cd ~/.config/ &&
git clone https://github.com/jallhames/dwm.git &&
cd ./dwm &&
./build.sh &&

# Configures Dotfiles
cp ./.xinitrc ~/ &&
cp ./.Xresources ~/ &&
cp ./.bashrc ~/.bashrc &&

mkdir -p ~/.config/picom &&
cp ./picom.conf ~/.config/picom/ &&

mkdir -p ~/.scripts &&
cp ./time.sh ~/.scripts/ &&

chmod +x ~/.xinitrc &&
chmod +x ~/.Xresources &&
chmod +x ~/.scripts/time.sh &&
chmod +x ~/.bashrc &&

echo "export _JAVA_AWT_WM_NONREPARENTING=1" >> /etc/profile &&

echo "Done! Enjoy."
