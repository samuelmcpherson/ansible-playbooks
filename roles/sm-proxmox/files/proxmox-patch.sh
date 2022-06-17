#!/bin/bash

for i in /etc/kernel/postinst.d/proxmox-auto-removal \
/etc/kernel/postinst.d/zz-proxmox-boot \
/etc/kernel/postinst.d/zz-update-grub \
/etc/kernel/postrm.d/zz-proxmox-boot \
/etc/kernel/postrm.d/proxmox-auto-removal \
/etc/kernel/postrm.d/zz-update-grub \
/etc/initramfs/post-update.d/proxmox-boot-sync

do 
    sed -i '1 ! s/^/#/' $i
    echo "exit 0" >> $i
done