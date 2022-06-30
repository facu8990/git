virt-install --name win10-install \
--machine q35 \
--boot uefi \
--memory 4096 \
--vcpus=2 \
--os-variant=win10 \
--network bridge=br0 \
--disk path=/opt/win10vm/disk.qcow2,size=40,format=qcow2,bus=virtio \
--disk path=~/images/win10.iso,device=cdrom \
--disk path=~/images/virtio-win.iso,device=cdrom \
--graphics=vnc 

