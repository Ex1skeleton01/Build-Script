#!/bin/bash
# Made by Ex1skeleton01

# color text
red='\033[0;31m'
green='\e[0;32m'
white='\033[0m'
yellow='\033[0;33m'

# device info
device_name=samsung
codename=a05m

# cleaning file
echo -e "\n"
echo -e "$red << cleaning up >> \n$white"
echo -e "\n"
rm -rf device/$device_name
rm -rf kernel/$device_name
rm -rf vendor/$device_name

# upload source
echo -e "\n"
echo -e "$yellow << upload device tree >> \n$green"
echo -e "\n"
git clone {link} device/$device_name/$codename

echo -e "\n"
echo -e "$white << upload vendor tree >> \n$red"
echo -e "\n"
git clone {link} vendor/$device_name/$codename

echo -e "\n"
echo -e "$green << upload kernel tree >> \n$yellow"
echo -e "\n"
git clone {link} kernel/$device_name/$codename

echo -e "\n"
echo -e "$red << Upload Success >> \n$white"
echo -e "\n"
