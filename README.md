# NUC8I5BEH Hackintosh (OpenCore)

![Hackintosh](AboutThisMac.png)

English | [简体中文](./README-zh_CN.md)

### Supported macOS versions
+ macOS Mojave 10.14.6
+ macOS Catalina 10.15.7
+ macOS Big Sur 11.6.1
+ macOS Monterey 12.2.1（which I'm using now）

### Config
+ OS: macOS Monterey 12.2.1 21D62 x86_64 / Macmini8,1
+ OpenCore: 0.7.8
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ SSD: 500GB [KONKA K550](https://union-click.jd.com/jdc?e=&p=AyIGZRheHQMRBFATUhMyEgZUGloTARsHXBxZJUZNXwtEa0xHV0YXEEULWldTCQQHCllHGAdFBwtEQkQBBRxNVlQYBUkeTVxNCRNLGEF6RwtVGloUAxQEXBtSEgAieAoSDE9wdk8wYAsSQmB4LlwJXl5nQVkXaxQyEgZUGlkRAxYDVStrFQUiRTvP0JPXnoWAleDCq7zf5LCCipwiBmUbXBQBGgRUGlsSChcBZRxbHDLLmdPP9ox3dtPHmo%2B0vcSj%2FcLCpDIiN1YrayUCIgRlWTUUV0IPAB9ZFwYbDgceXxZRQgUGGw9FVxcGAhJZEAEQA2UZWhQGGw%3D%3D)
+ RAM: 8GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=&p=AyIGZRprFQMTBlQaXBYFFwVcKx9KWkxYZUIeUENQDEsFA1BWThgJBABAHUBZCQUdRUFGGRJDD1MdQlUQQwVKDFRXFk8jQA4SBlQaWhQFEQBQGVIlWgxQAXlYbEpxfxFdCXJ6Fx0iUiR%2Bch4LZRprFQMTBlcfWhEGEjdlG1wlVHwHVBpaFAMTAVUeaxQyEgBUGFMWAxMPURJfHTIVB1wrgouExqrMbj%2FBkJPT9KSNsarLnuQrayUBIjdlG2sWMlBpUUhZQAVCBldJWEEEF1UGHwsRARpTV04OE1JAVFwTUxMyEAZUH1I%3D)
+ BIOS: [0078](https://drivers.softpedia.com/get/BIOS/Intel/Intel-NUC8i5BEH-NUC-Kit-BIOS-0078.shtml)
+ Monitor: [KOIOS K2721UD 4K 27](https://union-click.jd.com/jdc?e=&p=JF8BANUJK1olXQEGU19aCksXAF8LEl0XVAIBUl9eDntTXDdWRGtMGENDFlVDFhNSVzMXQA4KD1heSl1UDkkeB2wOGlgTQl9HCANtYx58XipQUhJwL3BCVlgKWzUJVg92e1cZbQcyVF9cCUkTAmsMG2slXQEyFTBaCkIXA2o4GmsVWgQBUVpeDkMTAWsNK1wVVDbbytiJpdJiZ7uamo-04tCm_IfEuXsnM2w4K2sVbQUyFjBYAB4fAGZbSwxCXVIHAwoKAEsUVDwKSw8dXgMEAw0PDnsVAm4MEms)


### BIOS Settings
+ __Disable__
	- Legacy Boot
	- Fast Boot
	- Network Boot
	- Secure Boot
	- Inter VT for directed I/VO(VT-d)
+ __Enable__
	- Boot USB Devices First
	- Boot Network Devices Last
+ __Wake on LAN from S4/S5__
	- Stay Off


### How to install
1. Put **EFI** and **NUC8_MacOnlineInstaller** into a Fat 32 format USB flash driver's **root directory**
2. Run the corresponding script file in **NUC8_MacOnlineInstaller** depending on your operating system
3. Restart computer and install macOS with the USB flash driver After all steps above are completed

### Active iMessage/FaceTime
1. Genarate **Serial Number**, **Board Serial Number** and **SmUUID** with [Hackintool](https://github.com/headkaze/Hackintool)
2. Check your **Serial Number** on [https://checkcoverage.apple.com](https://checkcoverage.apple.com), and make sure the result looks like the picture below, otherwise genarate them again (and again)
![checkSN](checkSN.png)
3. Replace **Serial Number**, **Board Serial Number** and **SmUUID** in *config.plist*
4. Restart computer

---

## Show your support

Give a ⭐️ if this project helped you!
