# NUC8I5BEH Hackintosh (OpenCore)

![Hackintosh](AboutThisMac.png)

English | [简体中文](./README-zh_CN.md)

### Supported macOS versions
+ macOS Mojave
+ macOS Catalina
+ macOS Big Sur
+ macOS Monterey
+ macOS Ventura
+ macOS Sonoma

### Config
+ OS: macOS Ventura 13.4 22F66 x86_64 / Macmini8,1
+ OpenCore: 0.9.3
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ SSD: 2TB [FANXIANG S790](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAQ0JK1olXQUHVVlcAEMfA18IGloUWQUBVlhUDksnRzBQRQQlBENHFRxWFlVPRjtUBABAQlRcCEBdCUoWB2wLGV0cWwYdDRsBVXtqSDRYHggdR2VjHF8aUT9VSyx2Qw1lUQoyVW5dCUoWAWsJH18VbTYCU24fZglcQThBK1olXQEKU19ZAE8UAm8KEmsSXQ8yjcDb3OaOdgvcidrB_LnU8PaEkfonM18LK1wVVBIEJh8PHE1lM18IK1glXQcCXFxfDE4fA28UG18SVQACSF5aAEwWB2cNGloUXwUyVl9cDEInM18PRyhMG25rMD8jVDxNaxhtGSEcW39HLTozCgJFWCwMGFtXPHxgM14uSR5cMw)
+ RAM: 16GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAN4JK1olXDYCVV9cCUoQAGgNHV4lGVlaCgFtUQ5SQi0DBUVNGFJeSwUIFxlJX3EIGloUXAcFV1lYDk4IWipURmtDBW1LISU2bylVU3FRSDlRWXZfSjktBEcnAl8IGloUXwIDUFpdOHsXBF9edVsUXAcDVV9bCE4nAl8IHF8RVQEEXF9fCk0TM2gIEmvMw4DW-ccobJ-FgruppI2x9d-b5W5tOEgnBG8BD11nHFQWUixtOEsnAF9KdVpCWFYEXF5UAR9CUWpdGgtGWgcGAwoOXBwfCz1dE1odbQQDVVpUOHs)
+ BIOS: [0078](https://drivers.softpedia.com/get/BIOS/Intel/Intel-NUC8i5BEH-NUC-Kit-BIOS-0078.shtml)
+ Monitor: [Redmi IPS 4K 27](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAR4JK1olXwQLUV1bAEkVA18IGloUXgMHUFZdAUsnRzBQRQQlBENHFRxWFlVPRjtUBABAQlRcCEBdCUoWAGoNH1MVVAYdDRsBVXtrcCYKGwNULmV9LgkeQyATZA1sYVtTUQoyVW5dCUoWAWsJH18VbTYCU24fZp-WvbmImYy80tCX34r1kVfOjc7Rus8lXDYCU1ZaCU8fAGoNGFoRbQECXW6Els3DrvZ9f4-H3NKj64j5oJKOsl84K1glWgYLQFgvSRkDBR04K1slXjYCVV5UAUIVAGsPHUcVXAUDXV5BCEwfBG4ME1gQXAUEV25fCUoTCl84KydmKE9DViIKVDhkUxV_ZyATDgQGMwsbeCUVfgRofA93A3heBxkqf05pcAQ4)


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
