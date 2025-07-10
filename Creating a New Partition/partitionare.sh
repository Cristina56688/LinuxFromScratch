#!/bin/bash
set -e

DISK="/dev/sdb"

echo "ATENȚIE: Toate datele de pe $DISK vor fi ȘTERSE!"
read -p "Ești sigur că vrei să continui? (yes/no): " confirm
[ "$confirm" != "yes" ] && echo "Anulat." && exit 1

echo "[1/7] Șterg partițiile vechi de pe $DISK..."
wipefs -a "$DISK"
sgdisk --zap-all "$DISK"

echo "[2/7] Creez partițiile..."
sgdisk -n1:0:+1G    -t1:8300 -c1:"boot"   "$DISK"
sgdisk -n2:0:+4G    -t2:8200 -c2:"swap"   "$DISK"
sgdisk -n3:0:+20G   -t3:8300 -c3:"root"   "$DISK"
sgdisk -n4:0:+40G   -t4:8300 -c4:"usr"    "$DISK"
sgdisk -n5:0:+20G   -t5:8300 -c5:"home"   "$DISK"
sgdisk -n6:0:+10G   -t6:8300 -c6:"var"    "$DISK"
sgdisk -n7:0:+10G   -t7:8300 -c7:"opt"    "$DISK"
sgdisk -n8:0:+4G    -t8:8300 -c8:"tmp"    "$DISK"
sgdisk -n9:0:+10G   -t9:8300 -c9:"srv"    "$DISK"
sgdisk -n10:0       -t10:8300 -c10:"extra" "$DISK"

partprobe "$DISK"
sleep 3

echo "[3/7] Formatez..."
mkfs.ext2  ${DISK}1
mkswap      ${DISK}2
mkfs.ext4   ${DISK}3
mkfs.ext4   ${DISK}4
mkfs.ext4   ${DISK}5
mkfs.ext4   ${DISK}6
mkfs.ext4   ${DISK}7
mkfs.ext4   ${DISK}8
mkfs.ext4   ${DISK}9
mkfs.ext4   ${DISK}10

echo "[4/7] Activez swap..."
swapon ${DISK}2

echo "[5/7] Creez punctele de montare..."
mkdir -p /mnt/lfs
mount ${DISK}3 /mnt/lfs

for dir in boot usr home var opt tmp srv extra; do
  mkdir -p /mnt/lfs/$dir
done

mount ${DISK}1  /mnt/lfs/boot
mount ${DISK}4  /mnt/lfs/usr
mount ${DISK}5  /mnt/lfs/home
mount ${DISK}6  /mnt/lfs/var
mount ${DISK}7  /mnt/lfs/opt
mount ${DISK}8  /mnt/lfs/tmp
mount ${DISK}9  /mnt/lfs/srv
mount ${DISK}10 /mnt/lfs/extra

echo "[6/7] Setez permisiuni speciale..."
chmod 1777 /mnt/lfs/tmp

echo "[7/7] Rezumat:"
lsblk "$DISK"
df -hT | grep /mnt/lfs

echo "Totul este gata. Partițiile au fost create și montate în /mnt/lfs/*"

