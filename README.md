## Quick Start
Build disk image
(NOTE: Ubuntu requires 8G up)
```
qemu-img create -f qcow2 qemuimg16.qcow 16G 
```

Install OS
```
qemu-system-x86_64 -m 1024 -enable-kvm \
 -cdrom ubuntu-22.04-desktop-amd64.iso \ 
 -drive file=qemuimg16.qcow,format=qcow2
## then build ubuntu from the ubuntu desktop prompt
## this will permenantly write the ubuntu OS into the disk (qemu16.qcow)
```
**-m**: memory, the more the merrier
**-enable-kvm**: required to run ubuntu desktop
**cdrom**: can supply it with web url
**drive**: disk image
**initrd**: ?

run it
```
qemu-system-x86_64 -m 1024 -enable-kvm qemuimg16.qcow
```



## SSHFS to work
```
qemu-system-x86_64 -m 1024 \
  ./qemuimg16.qcow \ 
  -enable-kvm \
  -net user,hostfwd=tcp::10022-:22 \
  -net nic \
  -nographic
```

```
ssh -p 10022 ping-jui-20220519@localhost:/home/ping-jui-20220519/ ./remote_home/
```
