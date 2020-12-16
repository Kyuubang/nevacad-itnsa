# RAID and LVM Practice - ITNSA

make sure your installed VMs linux with 6 additional  virtual hard disk that each has a size of 2 GB, and please configure **RAID** and **LVM** with spesification below,

* create redundan disk into 2 disk with RAID level 0 give name **md0**, create paritition with max size and ext4 filesystem, and also mount to /media/your_name

* create phisycal volume into 2 disk call it pv-<your_name>, and than create partiton with max size and ext4 filesystem, and also mount to /media/itnsa

* and then configure raid 5 for two partition left and mount to /mnt with btrfs partition

* **and also make sure mountpoint not removed after rebooting** 

```bash
bash -c "$(https://raw.githubusercontent.com/Kyuubang/nevacad-itnsa/master/raid-and-lvm/script.sh)"
```

