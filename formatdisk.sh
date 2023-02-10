#!/bin/bash

clear
echo "####### ####### ######  #     #    #    #######"
echo "#       #     # #     # ##   ##   # #      #"
echo "#       #     # #     # # # # #  #   #     #"
echo "#####   #     # ######  #  #  # #     #    #"
echo "#       #     # #   #   #     # #######    #"
echo "#       #     # #    #  #     # #     #    # "
echo "#       ####### #     # #     # #     #    #"
echo " "
sudo fdisk -l
sleep 1
echo " "
echo "+-+-+-+-+-+-+-+"
echo "|C|A|U|T|I|O|N|"
echo "+-+-+-+-+-+-+-+"
echo "if the name of your storage device that you want to format is NOT /deb/sdb abort the process with ctrl+c and edit the script"
sleep 1
echo " "
read -p "press any key to continue ..."
sudo umount /dev/sdb*
sleep 1
echo " "
read -p "press any key to continue ..."
sudo wipefs --all /dev/sdb
sleep 1
echo " "
read -p "press any key to continue ..."
sudo cfdisk /dev/sdb
sleep 1
echo " "
read -p "press any key to continue ..."
sudo mkfs.vfat -n 'NEWSTORAGE' /dev/sdb1
echo "Done!"
