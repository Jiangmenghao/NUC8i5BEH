# NUC8I5BEH Hackintosh (OpenCore)

![Hackintosh](AboutThisMac.png)

English | [简体中文](./README-zh_CN.md)

### Supported macOS versions
+ macOS Mojave
+ macOS Catalina
+ macOS Big Sur
+ macOS Monterey 12.4（which I'm using now）
+ macOS Ventura

### Config
+ OS: macOS Monterey 12.4 21F79 x86_64 / Macmini8,1
+ OpenCore: 0.8.3
+ CPU: Intel® Core™ i5-8259U Processor (6M Cache, up to 3.80 GHz)
+ SSD: 1TB [Lexar NM620](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAOcJK1olXwcEVlZcD0oXB18IGloUXQEGVVdUDEwnRzBQRQQlBENHFRxWFlVPRjtUBABAQlRcCEBdCUoWA2gMGlIcWQEdDRsBVXtjX2ZJUz9tX2N0MgMJaRl0ahl-ZCdlUQoyVW5dCUoWAWsJH18VbTYCU24LZksWAm4IGFsXXgQyVW5dD08TC2gBGFwXXQEGZFldAXvOnenctsJgOdKQ1Yr8t52zq7aRqmslbQUyU15UHE1lQj0cHSklbQYyV24fZhsXATtfGQwWVAICUFsKD0ofAGgMGVgRXlNRXF1UD0gVM20JGl8cbTY)
+ RAM: 16GB x 2 [ADATA DDR4 2666](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAN4JK1olXDYCVV9cCUoQAGgNHV4lGVlaCgFtUQ5SQi0DBUVNGFJeSwUIFxlJX3EIGloUXAcFV1lYDk4IWipURmtDBW1LISU2bylVU3FRSDlRWXZfSjktBEcnAl8IGloUXwIDUFpdOHsXBF9edVsUXAcDVV9bCE4nAl8IHF8RVQEEXF9fCk0TM2gIEmvMw4DW-ccobJ-FgruppI2x9d-b5W5tOEgnBG8BD11nHFQWUixtOEsnAF9KdVpCWFYEXF5UAR9CUWpdGgtGWgcGAwoOXBwfCz1dE1odbQQDVVpUOHs)
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
