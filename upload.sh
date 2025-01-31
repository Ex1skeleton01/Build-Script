#!/bin/bash
# Made by Ex1skeleton01

# color text

red='\033[0;31m'
green='\e[0;32m'
white='\033[0m'
yellow='\033[0;33m'

# device info
DEVICE_NAME=
DEVICE_CODENAME=
DEVICE_TREE=
VENDOR_TREE=
KERNEL_TREE=

# cleaning file

echo -e "\n"
echo -e "$red << cleaning up >> \n$white"
echo -e "\n"
rm -rf device/$DEVICE_NAME
rm -rf kernel/$DEVICE_NAME
rm -rf vendor/$DEVICE_NAME

# upload source

echo -e "\n"
echo -e "$yellow << upload device tree >> \n$green"
echo -e "\n"
git clone $DEVICE_TREE device/$DEVICE_NAME/$DEVICE_CODENAME

echo -e "\n"
echo -e "$white << upload vendor tree >> \n$red"
echo -e "\n"
git clone $VENDOR_TREE vendor/$DEVICE_NAME/$DEVICE_CODENAME

echo -e "\n"
echo -e "$green << upload kernel tree >> \n$yellow"
echo -e "\n"
git clone $KERNEL_TREE kernel/$DEVICE_NAME/$DEVICE_CODENAME

echo -e "\n"
echo -e "$red << Upload Success >> \n$white"
echo -e "\n"