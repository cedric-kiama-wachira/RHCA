#!/bin/bash

# Lost Password Recovery for Root Red Hat 8 and 9
1. Interupt Grub Loader
2. CTRL + E # To get to edit mode
3. Add rd.break at the end of linux line after quiet
4. CTRL + X  # To get out of edit and reboot the system
5. We get into Emergency Mode in a # Shell
6. mount | grep /sysroot # To check where the root file system is mounted
7. mount -o remount rw /sysroot
8. cd /sysroot
9. chroot /sysroot
10. ls -l
11. passwd root
12. touch /.autorelabel
13. exit
14. reboot

# Lost Password Recovery for Root Red Hat 9
1. Interupt Grub Loader
2. CTRL + E # To get to edit mode
3. Change ro to rw at the end of linux line after root=/dev/mapper/rhel-root
4. Still on the same line at the end of quiet we add init=/bin/bash
5. CTRL + X  # To get out of edit and reboot the system
6. passwd root
7. touch /.autorelabel
8. exec /sbin/init


