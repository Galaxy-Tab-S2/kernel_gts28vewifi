# kernel_gts28ve-gts210ve
Permissive kernel for the Samsung Galaxy Tab S2(2016)SM-T713/T719/T813/T819

Please do "make nconfig" and disable verity in Device Drivers/RAID AND LVM/verity target support
before building

Also, these commands are useful:

export CROSS_COMPILE=[your toolchain]
export ARCH=arm64
WARNING: It has been confirmed that with the .git directory present, 
wifi will fail to turn on due to the + being added to the kernel 
version. If Wifi does not work after compiling, make sure module signing 
is on, proper signature verification is off, but normal module signature 
verification is on, and rename .git to .gitold for compiling.

Lightn1ng
CTXz
