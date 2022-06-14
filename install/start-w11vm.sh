#!/bin/bash

[[ -f /opt/win10vm/disk.qcow2 ]] && echo "Disco Virtual /opt/win10vm/disk.qcow2 Listo"

[[ -f /opt/win10vm/disk.qcow2 ]] && \
sudo qemu-system-x86_64 \
 -name win10vm \
 -bios /usr/share/ovmf/OVMF.fd \
 -enable-kvm \
 -m 4096 \
 -usb -device usb-tablet \
 -nographic \
 -vnc :0 \
 -net user  \
 -nic user,hostfwd=tcp::5555-:3389,model=virtio-net-pci \
 -drive file=/opt/win10vm/disk.qcow2,index=0,media=disk,if=virtio \
 -net user  \
 -nic user,hostfwd=tcp::5555-:3389,model=virtio-net-pci

[[ ! -f /opt/win10vm/disk.qcow2 ]] && echo "Disco Virtual /opt/win10vm/disk.qcow2 Ausente"
