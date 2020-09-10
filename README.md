# checkra1n-linux Live USB Linux

## [Download Release](https://github.com/downthecrop/checkra1n-linux/releases/tag/0.9.8.2)

## Portable minimal boot environment for use with checkra1n

Linux Kernel: 5.4.3

glibc: 2.3

checkra1n version: 0.10.2 Beta

About: Live Linux distributions like Ubuntu (1.9GB), Fedora(1.8GB), Arch(635MB) and even Gentoo(347MB) are extremely bloated if you don't need to actually install an OS. This respin of Minimal Linux Live provides everything you need to run checkra1n for iOS/tvOS in under 50MB.

## Instructions

Requirements: 64bit CPU, USB Thumbdrive

Download [Rufus](https://rufus.ie/) (1.1MB)

Download [checkra1n-linux.iso](https://github.com/downthecrop/checkra1n-linux/releases) (44MB)

Write checkra1n-linux to USB using DD mode. Do not use ISO mode.

Restart computer, boot from USB (UEFI and BIOS supported)


# Building from source

```
# Resolve build dependencies
sudo apt install wget make gawk gcc bc bison flex xorriso libelf-dev libssl-dev

# Build everything and produce ISO image.
./build_minimal_linux_live.sh
```

If you fail to install libssl-dev from the default Ubuntu repos (Ubuntu 18.04) you can use the libssl-dev_1.1.deb file which should resolve the version conflicts

```
# Install libssl-dev
sudo dpkg -i libssl-dev_1.1.1-1ubuntu2.1~18.04.5_amd64.deb
```

If you want to add/change files to the boot environment add them to `minimal_overlay/rootfs/`




