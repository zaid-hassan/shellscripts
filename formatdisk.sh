#!/bin/bash

clear
echo "####### ####### ######  #     #    #    #######"
echo "#       #     # #     # ##   ##   # #      #"
echo "#       #     # #     # # # # #  #   #     #"
echo "#####   #     # ######  #  #  # #     #    #"
echo "#       #     # #   #   #     # #######    #"
echo "#       #     # #    #  #     # #     #    #"
echo "#       ####### #     # #     # #     #    #"
echo ""
sudo fdisk -l
sleep 1
echo ""
echo "+-+-+-+-+-+-+-+"
echo "|C|A|U|T|I|O|N|"
echo "+-+-+-+-+-+-+-+"
echo "If the name of your storage device that you want to format is NOT /deb/sdb abort the process with ctrl+c and edit the script."
sleep 1
echo ""
echo "Otherwise"
read -p "press any key to continue ..."
sudo umount /dev/sdb*
sleep 1
echo ""
read -p "press any key to continue ..."
sudo wipefs --all /dev/sdb
sleep 1
echo ""
read -p "press any key to continue ..."
sudo cfdisk /dev/sdb
sleep 1
echo ""
read -p "press any key to continue ..."
echo ""
echo "Set a volume name (In all Caps up to 11 characters long) for your newly formatted drive:"
read drivename
sudo mkfs.vfat -n '$drivename' /dev/sdb1
echo "Done!"
