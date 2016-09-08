#!/bin/bash
# Prepare script for kernel_gts28vewifi APG1
# By Ryan E.
if [ "$(whoami)" = "root" ]; then
  echo "Do not run script as root!"
  exit
fi
export ARCH=arm64
export CROSS_COMPILE=/home/$(whoami)/gcc-linaro-4.9-2014.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
echo "Cleaining up..."
make clean
make mrproper
echo ""
echo "Preparing defconfig..."
make VARIANT_DEFCONFIG=ashyx_gts28vewifi_defconfig msm8976_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig SELINUX_LOG_DEFCONFIG=selinux_log_defconfig
echo ""
echo ""
echo "Done! Please type 'make nconfig' to configure before running build.sh."
exit
