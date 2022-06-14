#!/bin/bash

[[ ! -d /opt/win10vm ]] && mkdir /opt/win10vm
[[ -d /opt/win10vm ]] && echo "Directorio /opt/win10vm Listo"

qemu-system-x86_64 -bios /usr/share/ovmf/ovmf_x64.bin -enable-kvm -cpu host -smp 4 -m 2048 -cdrom ~/Downloads/Win10_English_x64.iso -net nic,model=virtio -net user -drive file=/opt/win10vm/disk.hd.img.raw,format=raw,if=virtio -vga qxl -drive file=~/images/win10.iso,index=1,media=cdrom