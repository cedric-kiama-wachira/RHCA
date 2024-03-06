#!/bin/bash

# For a system using BIOS for booting
1. Boot from Installation Media.
2. Select Toubleshooting option
3. Select Rescue Option Presented
4. From the recue menu we select option 1 for Continue
5. Press Enter to get into the shell
6. chroot /mnt/sysroot
7. grub2-mkconfig -o /boot/grub2/grub.cfg 
8. lsblk # To locate the place where /boot /dev/sda1 is setup
9. grub-install /dev/sda 
10. exit
11. exit

vi /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg 
reboot

# For a system using EFI for booting
1. Boot from Installation Media.
2. Select Toubleshooting option
3. Select Rescue Option Presented
4. From the recue menu we select option 1 for Continue
5. Press Enter to get into the shell
6. chroot /mnt/sysroot
7. grub2-mkconfig -o /boot/efi/EFI/os-name/grub.cfg 
8. dnf reinstall grub2-efi grub2-efi-modules shim
9. exit
10. exit

vi /etc/default/grub
grub2-mkconfig -o /boot/efi/EFI/os-name/grub.cfg 
reboot





