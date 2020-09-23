#!/bin/sh

# Create the new mountpoint in RAM.
mount -t tmpfs none /mnt

# Create folders for all critical file systems.
mkdir /mnt/dev
mkdir /mnt/sys
mkdir /mnt/proc
mkdir /mnt/tmp
echo "Created folders for all critical file systems."

# Copy root folders in the new mountpoint.
echo -e "Copying the root file system to \\e[94m/mnt\\e[0m."
for dir in */ ; do
  case $dir in
    dev/)
      # skip
      ;;
    proc/)
      # skip
      ;;
    sys/)
      # skip
      ;;
    mnt/)
      # skip
      ;;
    tmp/)
      # skip
      ;;
    *)
      cp -a $dir /mnt
      ;;
  esac
done

DEFAULT_OVERLAY_DIR="/tmp/minimal/overlay"
DEFAULT_UPPER_DIR="/tmp/minimal/rootfs"
DEFAULT_WORK_DIR="/tmp/minimal/work"

# Move critical file systems to the new mountpoint.
mount --move /dev /mnt/dev
mount --move /sys /mnt/sys
mount --move /proc /mnt/proc
mount --move /tmp /mnt/tmp

exec switch_root /mnt /etc/03_init.sh