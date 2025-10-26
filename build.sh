#!/bin/bash
API=29

aarch64-linux-android${API}-clang++ \
    -Iinclude \
    main.cpp \
    system_property_set.cpp \
    systemproperties/*.cpp \
    -std=c++17 \
    -Os \
    -fdata-sections -ffunction-sections \
    -fvisibility=hidden -fno-rtti -fno-exceptions \
    -Wl,--gc-sections -s \
    -static-libgcc \
    -o resetprop-arm64 && ls -al resetprop-arm64

# 修正动态库名称（保留）
#sed -i -e 's@libc++_shared.so@libc++.so\x00\x00\x00\x00\x00\x00\x00@g' resetprop
