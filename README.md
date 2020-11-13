# NUC8I5BEH Hackintosh (OpenCore)

![Hackintosh](AboutThisMac.png)

### 2020/11/13 更新说明
+ 10.15.7（19H2）可OTA升级至 19H15 ，实测无任何问题，不用修改EFI。猜测：**小版本**的OTA应该都可以直接升级（10.15.7应该不会再有小更新了）
+ 请不要用此EFI直接升级Big Sur，会有各种问题。我会留在Catalina一段时间，等Big Sur稳定了再升级，到时再来分享我使用的EFI（别的地方已经有支持Big Sur的新EFI了，请自行搜索。此仓库只发布本人实测稳定的版本）

### 配置
+ OS: macOS Catalina 10.15.7 19H2 x86_64 / Macmini8,1
+ OpenCore: 0.6.2
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

---

## Show your support

Give a ⭐️ if this project helped you!
