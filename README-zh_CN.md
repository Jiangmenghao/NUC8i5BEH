# NUC8I5BEH 黑苹果 (OpenCore)

[English](./README.md) | 简体中文

### 支持的macOS版本
+ macOS Sonoma

### 白果博通网卡驱动
macOS Sonoma 已经移除了对白果博通网卡的驱动，蓝牙正常，但 Wi-Fi 无法使用。如果你使用白果博通网卡，请在进入操作系统后根据以下步骤安装驱动程序：

1. 下载 230929 版本的 EFI
2. 下载 [OpenCore Legacy Patcher for Sonoma](https://www.123pan.com/s/txFuVv-xXnjv.html) 补丁程序，提取码：x0e7
3. 更新 EFI 到 230929 版本，升级系统至 macOS Sonoma
4. 运行 OpenCore Legacy Patcher > Post-Install Root Patch > Start Root Patching > 完成，再次重启

*注意：每次系统升级后，都需要重新安装驱动*

### Intel 网卡驱动
[AirportItlwm-Sonoma-Preview05.zip](./AirportItlwm-Sonoma-Preview05.zip)


## Show your support

Give a ⭐️ if this project helped you!
