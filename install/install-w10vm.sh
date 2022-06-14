#!/bin/bash

[[ ! -d /opt/win10vm ]] && sudo mkdir /opt/win10vm
[[ -d /opt/win10vm ]] && echo "Directorio /opt/win10vm Listo"

[[ ! -f /opt/win10vm/disk.hd.img.raw ]] && sudo qemu-img create /opt/win10vm/disk.hd.img.raw 40G
[[ -f /opt/win10vm/disk.hd.img.raw ]] && echo "Disco Virtual ../win10vm/disk.hd.img.raw Listo"


sudo qemu-img create /opt/win10vm/disk.hd.img.raw 40G

sudo qemu-system-x86_64 -bios /usr/share/ovmf/OVMF.fd -enable-kvm -cpu host -smp 4 -m 4096 -net user  -net nic,model=virtio -vnc -vga qxl -cdrom ~/images/win10.iso -drive file=/opt/win10vm/disk.hd.img.raw,format=raw,if=virtio -drive file=~/images/win10.iso,index=1,media=cdrom

qemu-system-x86_64
 -enable-kvm
 -m 8G
 -cpu host,kvm=off
 -cdrom ~/Win10_1511_English_x64.iso
 -drive file=/usr/share/ovmf/ovmf_x64.bin,format=raw,if=pflash,readonly
 -drive file=/mnt/WindowsOS/WindowsOS,format=raw