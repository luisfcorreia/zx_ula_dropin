#!/bin/bash
set -o pipefail
MODULE=ula_zx48k
CHIP0=xc95144xl-tq100
CHIP1=xc95144xl-10-tq100
# cleanup
. ./clean.sh

xst -ifn $MODULE.xst -ofn $MODULE.srf
if [ $? -ne 0 ]; then
    echo "Error: xst failed"
    exit 1
fi

ngdbuild -p $CHIP0 $MODULE.ngc
if [ $? -ne 0 ]; then
    echo "Error: ngdbuild failed"
    exit 1
fi

cpldfit -p $CHIP1 -pterms 16 -inputs 12 $MODULE.ngd
if [ $? -ne 0 ]; then
    echo "Error: cpldfit failed"
    exit 1
fi

hprep6 -i $MODULE.vm6
if [ $? -ne 0 ]; then
    echo "Error: hprep6 failed"
    exit 1
fi

echo "#####"
stat -c "%n: %s bytes" $MODULE.jed
