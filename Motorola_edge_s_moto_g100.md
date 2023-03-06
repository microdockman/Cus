###  [ROM:dtbo.img+vendor_boot.img+boot.img+lineage.zip](https://download.lineageos.org/devices/nio/builds "悬停显示")  
###  [copy-partitions-20220613-signed.zip](https://mirrorbits.lineageos.org/tools/copy-partitions-20220613-signed.zip "悬停显示")  
###  [MindTheGapps](https://androidfilehost.com/?w=files&flid=322935 "悬停显示")  

    
### 开始
1. fastboot flash dtbo C:\Users\xxx\SOFT\ROM\G100\dtbo.img  
fastboot flash vendor_boot C:\Users\xxx\SOFT\ROM\G100\vendor_boot.img  
** reboot --> bootloader  

2. fastboot flash boot C:\Users\xxx\SOFT\ROM\G100\boot.img  
** reboot --> Recovery  

3. ** --> Apply from ADB  
adb sideload copy-partitions-20220613-signed.zip  


4. ** reboot --> Apply from ADB  
adb sideload lineage.zip  
** reboot --> Apply from ADB  
adb sideload MindTheGapps.zip  
