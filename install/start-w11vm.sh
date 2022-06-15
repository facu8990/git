#!/bin/bash

[[ -f /opt/win11vm/disk.qcow2 ]] && echo "Disco Virtual /opt/win11vm/disk.qcow2 Listo"

[[ -f /opt/win11vm/disk.qcow2 ]] && \
sudo qemu-system-x86_64 \
-name win11vm \
-bios /usr/share/ovmf/OVMF.fd \
-enable-kvm \
-cpu host \
-smp 2 \
-m 4096 \
-usb -device usb-tablet \
-k lt \
-nographic \
-nic user,hostfwd=tcp::5555-:3389 \
-drive file=/opt/win11vm/disk.qcow2,index=0,media=disk,format=qcow2,if=virtio

[[ ! -f /opt/win11vm/disk.qcow2 ]] && echo "Disco Virtual /opt/win11vm/disk.qcow2 Ausente"
