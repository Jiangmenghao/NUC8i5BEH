# NUC8I5BEH 黑苹果 (OpenCore)

![Hackintosh](AboutThisMac.png)

[English](./README.md) | 简体中文

### 支持的macOS版本
+ macOS Mojave 10.14.6
+ macOS Catalina 10.15.7
+ macOS Big Sur 11.6.5
+ macOS Monterey 12.3.1（我正在使用的版本）

### 配置
+ 操作系统: macOS Monterey 12.3.1 21E258 x86_64 / Macmini8,1
+ OpenCore: 0.8.0
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ 硬盘: 500GB [KONKA K550](https://union-click.jd.com/jdc?e=&p=AyIGZRheHQMRBFATUhMyEgZUGloTARsHXBxZJUZNXwtEa0xHV0YXEEULWldTCQQHCllHGAdFBwtEQkQBBRxNVlQYBUkeTVxNCRNLGEF6RwtVGloUAxQEXBtSEgAieAoSDE9wdk8wYAsSQmB4LlwJXl5nQVkXaxQyEgZUGlkRAxYDVStrFQUiRTvP0JPXnoWAleDCq7zf5LCCipwiBmUbXBQBGgRUGlsSChcBZRxbHDLLmdPP9ox3dtPHmo%2B0vcSj%2FcLCpDIiN1YrayUCIgRlWTUUV0IPAB9ZFwYbDgceXxZRQgUGGw9FVxcGAhJZEAEQA2UZWhQGGw%3D%3D)
+ 内存: 8GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=&p=AyIGZRprFQMTBlQaXBYFFwVcKx9KWkxYZUIeUENQDEsFA1BWThgJBABAHUBZCQUdRUFGGRJDD1MdQlUQQwVKDFRXFk8jQA4SBlQaWhQFEQBQGVIlWgxQAXlYbEpxfxFdCXJ6Fx0iUiR%2Bch4LZRprFQMTBlcfWhEGEjdlG1wlVHwHVBpaFAMTAVUeaxQyEgBUGFMWAxMPURJfHTIVB1wrgouExqrMbj%2FBkJPT9KSNsarLnuQrayUBIjdlG2sWMlBpUUhZQAVCBldJWEEEF1UGHwsRARpTV04OE1JAVFwTUxMyEAZUH1I%3D)
+ BIOS: [0078](https://drivers.softpedia.com/get/BIOS/Intel/Intel-NUC8i5BEH-NUC-Kit-BIOS-0078.shtml)
+ 显示器: [KOIOS K2721UD 4K 27](https://union-click.jd.com/jdc?e=&p=JF8BANUJK1olXQEGU19aCksXAF8LEl0XVAIBUl9eDntTXDdWRGtMGENDFlVDFhNSVzMXQA4KD1heSl1UDkkeB2wOGlgTQl9HCANtYx58XipQUhJwL3BCVlgKWzUJVg92e1cZbQcyVF9cCUkTAmsMG2slXQEyFTBaCkIXA2o4GmsVWgQBUVpeDkMTAWsNK1wVVDbbytiJpdJiZ7uamo-04tCm_IfEuXsnM2w4K2sVbQUyFjBYAB4fAGZbSwxCXVIHAwoKAEsUVDwKSw8dXgMEAw0PDnsVAm4MEms)


### BIOS设置
+ __禁用__
	- Legacy Boot
	- Fast Boot
	- Network Boot
	- Secure Boot
	- Inter VT for directed I/VO(VT-d)
+ __启用__
	- Boot USB Devices First
	- Boot Network Devices Last
+ __Wake on LAN from S4/S5__
	- Stay Off


### 使用方法
1. 将 **EFI** 和 **NUC8_MacOnlineInstaller** 放入FAT32 U盘根目录
2. 根据操作系统，执行**NUC8_MacOnlineInstaller**中对应的run脚本
3. 以上步骤完成后关机，使用U盘安装系统

### 激活iMessage/FaceTime
1. 使用[Hackintool](https://github.com/headkaze/Hackintool)生成**Serial Number**, **Board Serial Number** 和 **SmUUID**
2. 在[https://checkcoverage.apple.com](https://checkcoverage.apple.com)查询你的**Serial Number**，并确保查询结果如下图所示，否则继续摇号
![checkSN](checkSN.png)
3. 在 *config.plist* 中替换它们
4. 重启电脑

---

## Show your support

Give a ⭐️ if this project helped you!
