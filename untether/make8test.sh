#!/bin/sh

gcc -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk -arch armv7 untether32.c patchfinder.c -o untether32 -framework IOKit -std=c11 -fno-stack-protector -O3 -Wl,-dead_strip

strip untether32
ldid -Sent.xml untether32