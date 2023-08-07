#!/bin/sh
# quick start for Qubes
#qemu-system-x86_64 \
#  -cdrom Qubes-R4.1.0-x86_64.iso \
#  -drive file=disk.qcow,if=virtio \
#  -cpu Nehalem

qemu-system-x86_64 -m 1024\
  ./qemuimg16.qcow\
  -enable-kvm\
  -net user,hostfwd=tcp::10022-:22\
  -net nic\
  -nographic
