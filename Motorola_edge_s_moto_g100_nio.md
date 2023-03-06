###  ROM
* [WIKI](https://wiki.lineageos.org/devices/nio/install "悬停显示")  
* [ROM:dtbo.img+vendor_boot.img+boot.img+lineage.zip](https://download.lineageos.org/devices/nio/builds "悬停显示")  
* [copy-partitions-20220613-signed.zip](https://mirrorbits.lineageos.org/tools/copy-partitions-20220613-signed.zip "悬停显示")  
* [MindTheGapps](https://androidfilehost.com/?w=files&flid=322935 "悬停显示")  

    
### 开始
1. ** reboot --> bootloader  
fastboot flash dtbo C:\Users\xxx\SOFT\ROM\G100\dtbo.img  
fastboot flash vendor_boot C:\Users\xxx\SOFT\ROM\G100\vendor_boot.img  

2. ** reboot --> bootloader  
fastboot flash boot C:\Users\xxx\SOFT\ROM\G100\boot.img  
** reboot --> Recovery  

3. ** --> Apply from ADB  
adb sideload copy-partitions-20220613-signed.zip  


4. ** reboot --> Apply from ADB  
adb sideload lineage.zip  
** reboot --> Apply from ADB  
adb sideload MindTheGapps.zip  


### ROOT
* [Shamiko](https://github.com/LSPosed/LSPosed.github.io/releases "悬停显示")  
* [payload_dumper](https://androidfilehost.com/?fid=14871746926876819590 "悬停显示")  
* [Magisk](https://github.com/topjohnwu/Magisk/releases "悬停显示")  


1. payload.bin --> boot.img  

2. Magisk --> Magisk_boot.img  

3. ** reboot --> bootloader  
fastboot flash boot C:\Users\xxx\SOFT\ROM\G100\Magisk_boot.img  
