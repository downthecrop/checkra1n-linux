# checkra1n-linux minimal Live USB

## Portable minimal boot environment for use with checkra1n

About: Live Linux distributions like Ubuntu (1.9GB), Fedora(1.8GB), Arch(635MB) and even Gentoo(347MB) are extremely bloated if you don't need to actually install an OS. This respin of Minimal Linux Live provides everything you need to run checkra1n for iOS/tvOS in under 70MB.

## Instructions

Requirements: 64bit CPU, USB Thumbdrive

Download [Rufus](https://github.com/pbatard/rufus/releases/download/v3.11/rufus-3.11.exe)

Download [checkra1n Linux Live](https://github.com/downthecrop/checkra1n-linux/releases/latest)

Write checkra1n_linx_live.iso to USB using DD mode. Do not use ISO mode.

Restart computer, boot from USB (UEFI and BIOS supported)

# Building from source

```
# Resolve build dependencies
sudo apt install wget make gawk gcc bc bison flex xorriso libelf-dev libssl-dev

# Build everything and produce ISO image.
sudo ./build_checkra1n_linux_live.sh

# After you've built the kernel you can repackage the ISO without completely rebuilding using
sudo ./repackage.sh
```

If you want to add/change files to the boot environment add them to `minimal_overlay/rootfs/`
