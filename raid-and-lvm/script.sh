#!/bin/bash

# checking result.txt

if [[ -f result.txt ]];
then
    rm result.txt
fi

DATE=$(date +%Y-%m-%d)
if [[ "$#" -ne 1 ]];
then
    read -p "please enter your name : " NAME
fi

echo "===============" >> result.txt
echo "Name : $NAME" >> result.txt
echo "Date : $DATE" >> result.txt
echo "===============" >> result.txt

echo "checking lsblk ..."
sleep 1
lsblk >> result.txt
echo " " >> result.txt
echo "=================" >> result.txt
echo " " >> result.txt


echo "checking filesystem ..."
sleep 1
df -Th >> result.txt
echo " " >> result.txt
echo "=================" >> result.txt
echo " " >> result.txt


echo "checking fstab ..."
sleep 1
cat /etc/fstab >> result.txt
echo " " >> result.txt
echo "=================" >> result.txt
echo " " >> result.txt

echo "checking multi disk ..."
sleep 1
TEST=$(apt install -s mdadm &> /dev/null; echo $?)

if [[ "$TEST" -eq 0 ]];
then
    echo "checking /dev/mdxx ..."
    sleep 1
    mdadm --detail /dev/md* >> result.txt
    echo " " >> result.txt
    echo "=================" >> result.txt
    echo " " >> result.txt
else
    echo -e "\e[31mmdadm not installed\e[0m"
fi

echo "checking physical volume ..."
sleep 1
pvdisplay >> result.txt
echo " " >> result.txt
echo "=================" >> result.txt
echo " " >> result.txt
vgdisplay >> result.txt
echo "=================" >> result.txt
echo " " >> result.txt




# finish
echo " "
echo -e "checking complete [ \e[32mok\e[0m ]"
