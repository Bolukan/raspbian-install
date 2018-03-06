**Prepare SD Card**
* Download [Raspbian Stretch Lite](Version Raspbian.md)
* Download and install [Etcher](https:/etcher.io/)
* Flash **2017-11-29-raspbian-stretch-lite.zip** with Etcher

**Add WIFI**
* Add your SSID and WIFIPASSWORD to the file [wpa_supplicant.conf](wpa_supplicant.conf)
* Copy the file in partion *boot*. During first boot, this file will be moved to **/etc/wpa_supplicant/wpa_supplicant.conf**
* First 3 lines are from original **/etc/wpa_supplicant/wpa_supplicant.conf**

**Add SSH**
* Add file [ssh](ssh) in partion *boot*
* The file is empty and without extension

**Boot Pi**
* SSH Login, use putty.exe for Windows or SSH for Linux: ssh pi@192.168.1.x
* Account: **pi** and password: **raspberry**

**Update raspbian**
```
sudo apt-get update
sudo apt-get upgrade
```

**First configuration**
```
sudo raspi-config
```
```
1. Change User Password
```
Replace default password **raspberry** for user **pi**
```
2. Network Options
N1 Hostname
```
Avoid name conflicts and replace default hostname **raspberrypi** with **YOUR_NAME**
```
4. Localisation Options
I1 Change Locale
```
nl-NL.UTF-8 UTF-8  
default locale for the system environment: en_GB.UTF-8
```
4. Localisation Options
I2 Change Timezone
```
Europe/Amsterdam
```
4. Localisation Options
I4 Change Wi-Fi Country
```
NL Netherlands
