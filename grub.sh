#!/bin/sh

exit 0

sudo mount /dev/sdXY /mnt
sudo mount --bind /dev /mnt/dev 
sudo mount --bind /dev/pts /mnt/dev/pts 
sudo mount --bind /proc /mnt/proc 
sudo mount --bind /sys /mnt/sys
sudo chroot /mnt
grub-install /dev/sdX
grub-install --recheck /dev/sdX
update-grub

sudo umount /mnt/sys 
sudo umount /mnt/proc 
sudo umount /mnt/dev/pts 
sudo umount /mnt/dev 
sudo umount /mnt
