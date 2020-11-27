echo "# lsblk output" >> result.txt
lsblk >> result.txt
echo "" >> result.txt

echo "# ip a output" >> result.txt
ip a >> result.txt
echo "" >> result.txt

echo "# hostname" >> result.txt
hostname >> result.txt
echo "" >> result.txt

echo "# username" >> result.txt
ls /home >> result.txt
echo "" >> result.txt


