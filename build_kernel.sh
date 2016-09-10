#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=/home/$(whoami)/android/toolchain/gcc-linaro-4.9-2014.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

make clean && make mrproper
make VARIANT_DEFCONFIG=msm8976_sec_gts28vewifi_eur_defconfig msm8976_sec_defconfig
make menuconfig
make -j4
