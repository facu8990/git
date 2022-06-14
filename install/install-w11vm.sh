#!/bin/bash

[[ ! -d /opt/win10vm ]] && sudo mkdir /opt/win10vm
[[ -d /opt/win10vm ]] && echo "Directorio /opt/win10vm Listo"

[[ ! -f /opt/win10vm/disk.qcow2 ]] && sudo qemu-img create -f qcow2 /opt/win10vm/disk.qcow2 40G
[[ -f /opt/win10vm/disk.qcow2 ]] && echo "Disco Virtual /opt/win10vm/disk.qcow2 Listo"

sudo qemu-system-x86_64 \
 -name win10vm \
 -bios /usr/share/ovmf/OVMF.fd \
 -enable-kvm \
 -cpu host \
 -m 2048 \
 -usb -device usb-tablet \
 -nographic \
 -vnc :0 \
 -drive file=/opt/win10vm/disk.qcow2,index=0,media=disk,if=virtio \
 -drive file=~/images/win11.iso,index=2,media=cdrom \
 -drive file=~/images/virtio-win-0.1.217.iso,index=3,media=cdrom
 