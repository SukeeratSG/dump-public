#!/bin/bash

set -e

clear

git clone https://github.com/Havoc-Devices/android_device_xiaomi_raphael  device/xiaomi/raphael
git clone https://github.com/Havoc-Devices/android_device_xiaomi_extras  device/xiaomi/extras --depth=1
git clone https://github.com/Havoc-Devices/android_vendor_xiaomi_raphael --depth=1 
git clone https://github.com/Havoc-Devices/kernel_xiaomi_raphael  kernel/xiaomi/raphael --depth=1 
git fetch https://github.com/Havoc-Devices/hardware_qcom-caf_sm8150_display --depth=1 
git clone  https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings --depth=1
git clone https://gitlab.com/havoc-devices/trb_clang  prebuilts/clang/host/linux-x86/trb_clang -b 14 --depth=1

echo "Cloned Deps for raphael"