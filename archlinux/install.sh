#!/bin/bash

USER="nbouchin"
HOME_DISK="/dev/nvme0n1p"
ROOT_DISK="/dev/nvme1n1p1"

mkfs.vfat -F32 "$ROOT_DISK""1"
mkswap "$ROOT_DISK""2"
mkfs.ext4 "$ROOT_DISK""3"
mkfs.ext4 "$HOME_DISK"

mount "$ROOT_DISK""3" /mnt
mkdir /mnt/home && mount "$HOME_DISK" /mnt/home
swapon "$ROOT_DISK""2"
mkdir -p /mnt/boot/efi && mount -t vfat "$ROOT_DISK""1" /mnt/boot/efi

pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab
cat install.sh | head -1 >> /mnt/install.sh && cat install.sh  | tail -29 >> /mnt/install.sh
arch-chroot /mnt /bin/bash install.sh
exit
chmod +x install.sh
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime
hwclock --systohc

echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US ISO-8859-1" >> /etc/locale.gen
locale-gen
touch /etc/locale.conf && echo "LANG=en_US.UTF-8" >> /etc/locale.conf
touch /etc/hostname && echo "archlinux" >> /etc/hostname


echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1  localhost" >> /etc/hosts
echo "127.0.1.1 archlinux.localdomain archlinux" >> /etc/hosts

echo "Enter password for root"
passwd root

pacman -S wpa_supplicant dialog wireless_tools grub efibootmgr neovim sway swaylock swayidle swaybg dmenu tmux xorg xorg-xinit npm nodejs git intel-ucode mesa xf86-video-intel qemu qemu-arch-extra openssh python bc xterm python-pip qutebrowser pulseaudio dex xclip
echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m $USER
usermod -a -G wheel,video,audio $USER

passwd $USER
exit
umount -R /mnt
