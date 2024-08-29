#!/bin/bash

# Oppdatert systemet først:
sudo pacman -Syu

# Installer base-devel og git for å kunne bygge yay.
sudo pacman -S base-devel git --noconfirm

# Lag en midlertidig mappe:
mkdir /tmp/yay
cd /tmp/yay

# Hent data fra AUR git:
git clone https://aur.archlinux.org/yay.git
cd yay

# "Compiler pakken"
makepkg -si

# Slett midlertidig mappe:
rm -rf /tmp/yay

# Skriv yay versjon:
#yay --version

echo "!!!VELG liblphobos og ldc!!!"
# Installer onedrive pakke:
yay -S onedrive-abraunegg

# Installer forskjellige nyttige programmer 
sudo pacman -S firefox obsidian blender inkscape eog libreoffice-fresh okular pdfarranger --noconfirm
#qemu-full samba dersom maskinen skal være host.

echo "Resyncing onedrive"
onedrive --resync
echo Speiler onedrive
onedrive --synchronize --sync-shared-folders --verbose
