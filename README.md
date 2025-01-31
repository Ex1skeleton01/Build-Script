# Script Upload Device Tree, Kernel Tree, Vendor Tree
Made by @Ex1skeleton01

## Configuration
- cd $ROM_NAME
- then `wget https://raw.githubusercontent.com/Ex1skeleton01/Build-Script/refs/heads/master/upload_src.sh`
- bash upload_src.sh
- done

### Variables

---------------
```bash
# device info example :
device_name=samsung
codename=a05m

# change source here

# Device Tree
echo -e "\n"
echo -e "$yellow << upload device tree >> \n$green"
echo -e "\n"
git clone https://github.com/Ex1skeleton01/android_device_samsung_a05m.git device/$device_name/$codename

# Vendor Tree
echo -e "\n"
echo -e "$white << upload vendor tree >> \n$red"
echo -e "\n"
git clone https://github.com/smiley9000/vendor_samsung_a05m.git vendor/$device_name/$codename

# Kernel Tree
echo -e "\n"
echo -e "$green << upload kernel tree >> \n$yellow"
echo -e "\n"
git clone https://github.com/Ex1skeleton01/android_kernel_samsung_a05m.git kernel/$device_name/$codename
```

