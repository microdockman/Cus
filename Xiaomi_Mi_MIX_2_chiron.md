###  ROM
* [WIKI](https://wiki.lineageos.org/devices/chiron/install "悬停显示")  
* [ROM:recovery.img+boot.img+lineage.zip](https://download.lineageos.org/devices/chiron/builds "悬停显示")  
* [Mi_Unlock](https://en.miui.com/unlock/download_en.html "悬停显示")  
* [MindTheGapps](https://androidfilehost.com/?w=files&flid=322935 "悬停显示")  

    
### 开始
1. ** reboot --> bootloader  
fastboot flash boot C:\Users\xxx\SOFT\ROM\MIX2\recovery.img  
** reboot --> Recovery  

2. ** reboot --> Apply from ADB  
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
fastboot flash boot C:\Users\xxx\SOFT\ROM\MIX2\Magisk_boot.img  
