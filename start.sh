#!/bin/sh
qemu-system-x86_64 \
  -cdrom Qubes-R4.1.0-x86_64.iso \
  -drive file=disk.qcow,if=virtio \
  -cpu Nehalem
