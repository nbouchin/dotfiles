#!/bin/bash

mkfs.vfat -F32 /dev/nvme1n1p1
mkswap /dev/nvme1n1p2
mkfs.ext4 /dev/nvme1n1p3

mount /dev/nvme1n1p3 /mnt
mkdir /mnt/home && mount /dev/nvme0n1p1 /mnt/home
swapon /dev/nvme1n1p2
mkdir -p /mnt/boot/efi && mount -t vfat /dev/nvme1n1p1 /mnt/boot/efi

pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab
cat install.sh | head -1 >> /mnt/install.sh && cat install.sh  | tail -28 >> /mnt/install.sh
arch-chroot /mnt
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

passwd

pacman -S wpa_supplicant dialog wireless_tools grub efibootmgr neovim sway swaylock swayidle swaybg i3status dmenu tmux xorg xorg-xinit npm nodejs git intel-ucode mesa xf86-video-intel qemu qemu-arch-extra openssh python bc
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m nbouchin
usermod -a -G wheel,video nbouchin
passwd nbouchin
exit
exit
umount -R /mnt
reboot
