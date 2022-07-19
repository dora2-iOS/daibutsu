#!/bin/sh
sudo rm BUILD/daibutsu

gcc -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk -DUNTETHER -DKPATCH -arch armv7 untether32.c patchfinder.c -o untether32 -framework IOKit -std=gnu99 -fno-stack-protector -Os

strip untether32
ldid -Sent.xml untether32
sudo cp -a untether32 BUILD/daibutsu
sudo chown 0:0 BUILD/daibutsu
