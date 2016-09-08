#!/bin/bash
# By Ryan E.
CORE_COUNT=`grep processor /proc/cpuinfo|wc -l`
echo "Building kernel with toolchain $CROSS_COMPILE for $ARCH using $CORE_COUNT cores as $(whoami)..."
echo ""
sleep 5
make -j$CORE_COUNT
