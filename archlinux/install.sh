!#/bin/bash

mkfs.vfat -F32 /dev/nvme1n1p1
mkswap /dev/nvme1n1p2
mkfs.ext4 /dev/nvme1n1p3

mount /dev/nvme1n1p3 /mnt
mkdir /mnt/home && mount /dev/nvme0n1p1 /mnt/home
swapon /dev/nvme1n1p2
mkdir -p /mnt/boot/efi && mount -t vfat /dev/nvme1n1p1 /mnt/boot/efi

pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
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

pacman -S wpa_supplicant dialog wireless_tools grub efibootmgr neovim sway swaylock swayidle swaybg i3status dmenu tmux xorg xinit npm nodejs git intel-ucode mesa xf86-video-intel qemu qemu-arch-extra
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot
