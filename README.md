# NUC8I5BEH Hackintosh (OpenCore)

![Hackintosh](AboutThisMac.png)

### Supported macOS versions
+ macOS Mojave 10.14.6
+ macOS Catalina 10.15.7（我正在使用的版本）
+ macOS Big Sur 11.x.x

### 配置
+ OS: macOS Catalina 10.15.7 19H524 x86_64 / Macmini8,1
+ OpenCore: 0.6.8
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ SSD: 500GB [KONKA K550](https://union-click.jd.com/jdc?e=&p=AyIGZRheHQMRBFATUhMyEgZUGloTARsHXBxZJUZNXwtEa0xHV0YXEEULWldTCQQHCllHGAdFBwtEQkQBBRxNVlQYBUkeTVxNCRNLGEF6RwtVGloUAxQEXBtSEgAieAoSDE9wdk8wYAsSQmB4LlwJXl5nQVkXaxQyEgZUGlkRAxYDVStrFQUiRTvP0JPXnoWAleDCq7zf5LCCipwiBmUbXBQBGgRUGlsSChcBZRxbHDLLmdPP9ox3dtPHmo%2B0vcSj%2FcLCpDIiN1YrayUCIgRlWTUUV0IPAB9ZFwYbDgceXxZRQgUGGw9FVxcGAhJZEAEQA2UZWhQGGw%3D%3D)
+ RAM: 8GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=&p=AyIGZRprFQMTBlQaXBYFFwVcKx9KWkxYZUIeUENQDEsFA1BWThgJBABAHUBZCQUdRUFGGRJDD1MdQlUQQwVKDFRXFk8jQA4SBlQaWhQFEQBQGVIlWgxQAXlYbEpxfxFdCXJ6Fx0iUiR%2Bch4LZRprFQMTBlcfWhEGEjdlG1wlVHwHVBpaFAMTAVUeaxQyEgBUGFMWAxMPURJfHTIVB1wrgouExqrMbj%2FBkJPT9KSNsarLnuQrayUBIjdlG2sWMlBpUUhZQAVCBldJWEEEF1UGHwsRARpTV04OE1JAVFwTUxMyEAZUH1I%3D)
+ BIOS: [0078](https://drivers.softpedia.com/get/BIOS/Intel/Intel-NUC8i5BEH-NUC-Kit-BIOS-0078.shtml)
+ Monitor: [Redmi 1A 23.8](https://union-click.jd.com/jdc?e=&p=AyIGZRprFQMTBlUZXhEGFgBcKx9KWkxYZUIeUENQDEsFA1BWThgJBABAHUBZCQUdRUFGGRJDD1MdQlUQQwVKDFRXFk8jQA4SBlQaWxcHFgNRHFIlAnJuPUAMRwVyWgVFCGl%2FamY0eFhxYh4LZRprFQMTBlcfWhEGEjdlG1wlVHwHVBpaFAMXB1YZaxQyEgBUGFMWAxAGUxhZFDIVB1wrgouExqrMbj%2FBkJPT9KSNsarLnuQrayUBIjdlG2sWMlBpAE4OEQIUVFAZCxQAFw5SE1MQChMOBRsIQVISD1dLWRYyEAZUH1I%3D)


### BIOS设置
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


### 使用方法
将 **EFI** 和 **NUC8_MacOnlineInstaller** 放入FAT32 U盘根目录，执行**NUC8_MacOnlineInstaller**中的run脚本，完成后使用U盘开机即可安装

### 修改三码以激活iMessage/FaceTime
macOS系统安装完成后，请使用[Hackintool]()生成**Serial Number**, **Board Serial Number** 和 **SmUUID**，并在*config.plist*中替换它们。

在[https://checkcoverage.apple.com](https://checkcoverage.apple.com)查询你的**Serial Number**，并确保查询结果如下图所示，否则继续摇号。

![checkSN](checkSN.png)

---

## Show your support

Give a ⭐️ if this project helped you!
