Download:
* Raspbian Stretch Lite

* Download and install [Etcher](https:/etcher.io/)

Flash **2017-11-29-raspbian-stretch-lite.zip** with Etcher

**Add WIFI**
* Add your SSID and WIFIPASSWORD to the file **wpa_supplicant.conf**
* Copy the file in partion *boot*, during first boot, this file will be moved to **/etc/wpa_supplicant/wpa_supplicant.conf**
* First 3 lines are from original **/etc/wpa_supplicant/wpa_supplicant.conf**

**Add SSH**
* Add file **ssh** in partion *boot*
* The file is empty

**Boot Pi**
* SSH Login, use putty.exe for Windows or SSH for Linux
* Account: **pi** and password: **raspberry**

Update raspbian
```
sudo apt-get update
sudo apt-get upgrade
```
**GET A COFFEE**
```
sudo apt-get raspi-config
```
