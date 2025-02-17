
# Find your Target Device
## List USB drives
```bash
df -Th | grep media
lsblk | grep media
sudo fdisk -l
sudo fdisk -l | grep "Disk_name"
usb-devices
```
## List mounted drives
``` bash
findmnt
mount -l
mount -l -t ext4
sudo df -a -T -h
sudo df -a -T -h -t ext4
```

# Unmount the Target Device
## 
```bash
sudo umount /dev/[device_name]
```

# Format the Target Device
## Format using Terminal
```bash
sudo mkfs.vfat /dev/[device_name]
sudo mkfs.ntfs /dev/[device_name]
sudo mkfs.exfat /dev/[device_name]
```
## Other Formatting Options
- Disk Utility
- GParted

# Verify USB Formatting
```bash
sudo fsck /dev/[device_name]
```

# Disk Destroyer

Disk Destroyer will write ISOs into your USB: 
``` bash
dd if=/path/to/your/isofile of=/your/usb/disk bs=8M status=progress
```

If you want to be able to view the progress or get an ETA, you can add Pipe View (pv) into the mix, e.g.:
```bash
dd if=<path to input file> | pv -s <size e.g. 1377M> | dd of=<path to target device>
```
This will give an output like:
```
850MiB 0:05:18 [6.44MiB/s] [===================> ] 61% ETA 0:03:16
```

# Wiping USB (Writing Zeros)
```bash
sudo dd if=/dev/zero of=/dev/[device] bs=4096 status=progress
```

# References:
1) [Copying ISO to USB](https://superuser.com/questions/351814/how-to-copy-an-iso-image-onto-usb-with-dd)
2) [Listing USB Devices](https://linuxhandbook.com/list-usb-devices/)
3) [Listing Mounted Drives](https://linuxhandbook.com/list-mounted-drives/)
4) [Formatting USB and Data Recovery](https://phoenixnap.com/kb/linux-format-usb)
