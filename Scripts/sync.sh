#!/bin/bash

clear
echo 'Please enter the device you wanna build for'
read device

rompath=$PWD

cd ${rompath}/device
rm -rf xiaomi realme asus google oneplus nokia *common sm* samsung sony motorola meizu lge lg zuk

cd ${rompath}/vendor
rm -rf xiaomi realme asus google oneplus nokia *common sm* samsung sony motorola meizu lge lg zuk

cd ${rompath}/kernel 
rm -rf xiaomi realme asus google oneplus nokia *common sm* samsung sony motorola meizu lge lg zuk

cd ${rompath}

git clone https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/proton-clang  --depth=1

ln -s prebuilts/clang/host/linux-x86/proton-clang prebuilts/clang/host/linux-x86/clang-proton
ln -s prebuilts/clang/host/linux-x86/proton-clang prebuilts/clang/host/linux-x86/proton

if [ "$device" = "alioth" ];
then

git clone https://github.com/SukeeratSG/device_xiaomi_alioth device/xiaomi/alioth
git clone https://github.com/SukeeratSG/device_xiaomi_sm8250-common device/xiaomi/sm8250-common
git clone https://github.com/SukeeratSG/kernel_xiaomi_alioth kernel/xiaomi/alioth --depth=1
git clone https://gitlab.com/Irongfly/vendor_xiaomi_alioth.git vendor/xiaomi/alioth --depth=1
git clone https://github.com/SukeeratSG/vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common --depth=1

rm -rf hardware/qcom-caf/sm8250/display hardware/qcom-caf/sm8250/audio hardware/xiaomi

git clone https://github.com/SukeeratSG/hardware_qcom-caf_sm8250_display  hardware/qcom-caf/sm8250/display
git clone https://github.com/SukeeratSG/hardware_qcom-caf_sm8250_display  hardware/qcom-caf/sm8250/audio
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi 

fi

if [ "$device" = "raphael" ];
then

git clone https://github.com/SukeeratProgrammingServices/raphael device/xiaomi/raphael
git clone https://github.com/SukeeratSG/android_device_xiaomi_extras  device/xiaomi/extras -b  arcana
git clone https://github.com/SukeeratSG/raphael_kernel  kernel/xiaomi/raphael -b  arcana --depth=1
git clone https://github.com/SukeeratSG/raphael_vendor vendor/xiaomi/raphael -b 12 --depth=1 

git clone https://gitlab.com/varunhardgamer/trb_clang.git  prebuilts/clang/host/linux-x86/trb_clang -b 14 --depth=1

cd device/xiaomi/raphael

fi

if [ "$device" = "X01BD" ];

then

git clone https://github.com/SukeeratSG/device_asus_X01BD  device/asus/X01BD
git clone https://github.com/SukeeratSG/sdm660-common device/asus/sdm660-common  
git clone https://github.com/SukeeratSG/vendor_asus  vendor/asus --depth=1
git clone https://github.com:SukeeratSG/kernel_asus_sd660.git kernel/asus/sdm660 --depth=1
gi

fi

if [ "$device" = "X00TD" ];

then

git clone https://github.com/SukeeratSG/device_asus_X00TD  device/asus/X00TD
git clone https://github.com/SukeeratSG/sdm660-common device/asus/sdm660-common  
git clone https://github.com/SukeeratSG/vendor_asus  vendor/asus --depth=1
git clone https://github.com:SukeeratSG/kernel_asus_sd660.git kernel/asus/sdm660 --depth=1

fi
