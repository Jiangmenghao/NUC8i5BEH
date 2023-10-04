# NUC8I5BEH 黑苹果 (OpenCore)

![Hackintosh](AboutThisMac.png)

[English](./README.md) | 简体中文

### 支持的macOS版本
+ macOS Mojave
+ macOS Catalina
+ macOS Big Sur
+ macOS Monterey
+ macOS Ventura
+ macOS Sonoma（不建议）

如果你已升级到 Sonoma 且有使用 Wi-Fi 的需求，无论是白果博通网卡还是自带的英特尔网卡，请切换到 [sonoma-only](https://github.com/Jiangmenghao/NUC8i5BEH/tree/sonoma-only) 分支

### 配置
+ 操作系统: macOS Ventura 13.4 22F66 x86_64 / Macmini8,1
+ OpenCore: 0.9.3
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ 硬盘: 2TB [FANXIANG S790](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAQ0JK1olXQUHVVlcAEMfA18IGloUWQUBVlhUDksnRzBQRQQlBENHFRxWFlVPRjtUBABAQlRcCEBdCUoWB2wLGV0cWwYdDRsBVXtqSDRYHggdR2VjHF8aUT9VSyx2Qw1lUQoyVW5dCUoWAWsJH18VbTYCU24fZglcQThBK1olXQEKU19ZAE8UAm8KEmsSXQ8yjcDb3OaOdgvcidrB_LnU8PaEkfonM18LK1wVVBIEJh8PHE1lM18IK1glXQcCXFxfDE4fA28UG18SVQACSF5aAEwWB2cNGloUXwUyVl9cDEInM18PRyhMG25rMD8jVDxNaxhtGSEcW39HLTozCgJFWCwMGFtXPHxgM14uSR5cMw)
+ 内存: 16GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAN4JK1olXDYCVV9cCUoQAGgNHV4lGVlaCgFtUQ5SQi0DBUVNGFJeSwUIFxlJX3EIGloUXAcFV1lYDk4IWipURmtDBW1LISU2bylVU3FRSDlRWXZfSjktBEcnAl8IGloUXwIDUFpdOHsXBF9edVsUXAcDVV9bCE4nAl8IHF8RVQEEXF9fCk0TM2gIEmvMw4DW-ccobJ-FgruppI2x9d-b5W5tOEgnBG8BD11nHFQWUixtOEsnAF9KdVpCWFYEXF5UAR9CUWpdGgtGWgcGAwoOXBwfCz1dE1odbQQDVVpUOHs)
+ BIOS: [0078](https://drivers.softpedia.com/get/BIOS/Intel/Intel-NUC8i5BEH-NUC-Kit-BIOS-0078.shtml)
+ 显示器: [Redmi IPS 4K 27](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAR4JK1olXwQLUV1bAEkVA18IGloUXgMHUFZdAUsnRzBQRQQlBENHFRxWFlVPRjtUBABAQlRcCEBdCUoWAGoNH1MVVAYdDRsBVXtrcCYKGwNULmV9LgkeQyATZA1sYVtTUQoyVW5dCUoWAWsJH18VbTYCU24fZp-WvbmImYy80tCX34r1kVfOjc7Rus8lXDYCU1ZaCU8fAGoNGFoRbQECXW6Els3DrvZ9f4-H3NKj64j5oJKOsl84K1glWgYLQFgvSRkDBR04K1slXjYCVV5UAUIVAGsPHUcVXAUDXV5BCEwfBG4ME1gQXAUEV25fCUoTCl84KydmKE9DViIKVDhkUxV_ZyATDgQGMwsbeCUVfgRofA93A3heBxkqf05pcAQ4)


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
