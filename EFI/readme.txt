- Version：210618
- Maintainer：维奇(weachy)
- 柔情似水，佳期如梦，忍顾鹊桥归路。

如果你想了解更多关于 NUC8ixBE 豆子峡谷黑苹果相关知识，请查阅我的文章 https://u.nu/bean
If you want to learn more about hackintosh with Intel NUC 'Bean Canyon'. Please visit: https://u.nu/bean


* 当前引导支持 Mojave、Catalina、Big Sur（10.14～11.x）。暂不考虑适配 macOS Monterey（12）开发者预览版（Beta 版），等待秋季发布正式版。有群友已尝试升级 macOS 12 Beta 版，除系统本身的 BUG 外，因 Kext 尚未适配新系统，存在部分硬件无法驱动的问题，风险自担。


- OpenCore 实现双系统引导的说明：
1、Windows 建议直接用 UEFI 模式安装（⚠️无需 Bootcamp 安装，⚠️不支持 MBR 传统引导模式）。
2、内置了四套 plist 配置文件，区别如下：
 单系统：
  config.plist：默认配置文件，适配 4k 分辨率的显示器
  config-1080p.plist：默认配置文件，适配低于 4k 分辨率的显示器
 双系统：
  config-双系统.plist：适配 4k 分辨率的显示器
  config-双系统-1080p.plist：适配低于 4k 分辨率的显示器
请选择适合自己的 plist，重命名为 config.plist 并覆盖 /EFI/OC/config.plist 文件
3、准备工作：
（1）单盘双系统用户需将 Windows 引导的 /EFI/Microsoft 文件夹备份，然后清空 EFI 分区，放入 EFI-OC-XXXXXX.zip 解压得到的 EFI 文件夹，将备份的 /EFI/Microsoft 文件夹与 OC 引导合并（即 EFI 下有 Boot、OC、Microsoft 三个文件夹）；
（2）双盘双系统的用户，无需改动两个 EFI 分区；

⚠️注意：
1）以上配置中，双系统默认显示 OpenCore 引导界面，单系统直接显示苹果 Logo。
2）对于双系统用户，OpenCore 引导界面已配置好倒计时，无操作则进入默认系统。可通过选中引导项按 Ctrl+Enter 将其设置为默认。看到 OC 引导界面后，任意按下方向键即可停止倒计时。
3）对于单系统用户，如希望进入 OC 引导界面（例如要进入 Recovery 模式，或要执行 Reset Nvram），只需开机后，连续点按 ESC 或 Option 键（Windows键盘的 Alt 键）即可。
4）Recovery 模式和 Reset NVRAM 均为隐藏功能，在 OpenCore 引导界面敲击一下空格，即可出现。


- OpenCore 引导更新方法 / Clover 迁移 OpenCore 方法：
1、备份出 EFI 分区中的旧版引导文件夹
2、EFI 分区内的文件全部删除（双系统的保留 /EFI/Microsoft 文件夹），将解压出的 EFI 文件夹放入 EFI 分区
3、迁移三码。请参考“手动迁移三码方法”或直接使用豪客开发的“三码迁移工具”。
4、重建缓存并修复权限：打开 Hackintool 软件，点击顶部“工具”页面，点击最下面一排图标的最后一个（鼠标悬浮在上面显示“重建缓存并修复权限”的便是）。此操作大约需要等待半分钟执行完毕。
5、重启电脑并清空NVRAM：电脑启动时，连续按 ESC 键进入 OC 引导界面，按一次空格键出现隐藏选项，选择最后一个“Reset NVRAM”回车执行，电脑会自动重启进入系统。
6、如果重启提示未找到启动项（No bootable device），请使用 PE 系统，修复 OpenCore 引导（使用 easyUEFI、Bootice 等软件，具体操作可搜索“修复 Windows 系统引导”的教程作为参考）。


- 手动迁移三码方法：（建议缺乏动手能力的小白用户，直接使用豪客制作的“三码迁移工具”，可到群共享下载）
三码的配置名在 Clover 和 OpenCore 略有区别，对应关系如下：
	BoardSerialNumber 或 MLB	-> MLB
			    ROM	-> ROM
	  	   SerialNumber -> SystemSerialNumber
    		     CustomUUID	-> SystemUUID
使用文本编辑器分别打开上一步中备份的 Clover 的 config.plist，以及 OpenCore 的 config.plist 配置文件。将以上四个值复制到对应字段的下一行，注意复制时要包含“值类型定义”一起复制替换（“<>”的部分），例如 Clover 中如下配置：
<key>ROM</key>
<data>ExcM+qxi</data>
需要复制 <data>ExcM+qxi</data> 替换到 OC 配置文件中，不能只复制 ExcM+qxi。


- Intel 板载蓝牙驱动
⚠️ 目前最优方案仍然是白果卡蓝牙，目前板载蓝牙默认不支持 Sniff 模式，会增加蓝牙外设耗电量，另外有不少蓝牙鼠标连接不上。
我整理了豆子峡谷专用的 intel 板载蓝牙驱动（兼容 10.13 以上系统），可同时兼容 OpenCore 与 Clover，请到群共享中获取“intel板载蓝牙驱动_for_OC&Clover”。
⚠️ 由于 OpenCore 的变化，板载驱动默认为禁用状态，请参考下面“更新日志”部分 2020-10-16 的更新内容修改为启用。


- Intel 板载 Intel Wi-Fi 驱动
⚠️ 有很多人不断在问驱动是否完美的问题。要回答这个问题首先要定义什么是“完美”，如果将白果卡的体验定为完美，那板载网卡几乎不可能完美，如果只是满足基础上网需求，倒是算可用，因为现阶段驱动速率低、偶尔有掉驱动的问题。当前驱动是从 OpenBSD 平台的 Intel 驱动移植，只能说尽力在做适配和兼容，适合要求不高的用户。最优方案仍然是白果卡。
考虑到板载 Wifi 驱动大佬 @zxystd 发布了 Intel Wi-Fi 驱动的正式版，简单做了集成工作，但是默认为关闭状态，自行按如下方法开启：

* itlwm 版驱动（需配合 HeliPort 客户端使用）
1、下载 itlwm 驱动（名称格式为 itlwm_驱动版本号_stable.kext.zip），地址：https://github.com/OpenIntelWireless/itlwm/releases
2、将解压出的 itlwm.kext 放入 /EFI/OC/Kexts/ 文件夹。
3、修改 config.plist，启用注册 itlwm.kext 的代码（搜索“itlwm.kext”，下面几行找到 <key>Enabled</key> 下一行的值 <false/> 改为 <true/>）。
4、安装板载 Intel Wi-Fi 客户端程序 HeliPort，地址：https://github.com/OpenIntelWireless/HeliPort/releases
5、重启电脑，运行 HeliPort 程序连接到 Wifi。按下 Option 点击菜单栏的 HeliPort，可将其设置为开机自启。

* AirportItlwm 版驱动（无需配合 HeliPort 客户端使用）
1、根据自己当前的 macOS 版本下载 AirportItlwm 驱动（名称格式为 AirportItlwm_驱动版本号_stable_macOS系统代号.kext.zip），地址：https://github.com/OpenIntelWireless/itlwm/releases
2、将解压出的 AirportItlwm.kext 放入 /EFI/OC/Kexts/ 文件夹。
3、修改 config.plist，启用注册 AirportItlwm.kext 的代码（搜索“AirportItlwm.kext”，下面几行找到 <key>Enabled</key> 下一行的值 <false/> 改为 <true/>）。
4、修改 config.plist，搜索“IO80211Family.kext”，下面几行找到 <key>Enabled</key> 下一行的值 <false/> 改为 <true/>
5、重启电脑。


- 开启读卡器驱动（仅适用于未硬改用户）
1、修改 config.plist，搜索“Sdcard”，下方找到 <key>Enabled</key> 下一行的值 <false/> 改为 <true/>，即表示启用
2、重启电脑。


- 更新日志（Changelog）：

2021-06-18
1、更新 OpenCore 0.7.0 正式版。
2、例行升级 kext 版本（AppleALC、NVMeFix、RestrictEvents、VirtualSMC、WhateverGreen）。
3、优化 OpenCore UI；解决部分显示器休眠后无法点亮屏幕的问题。

2021-05-15
1、修复上一版引导在休眠唤醒后，部分应用假死、无法播放在线视频的问题。

2021-05-12
1、更新 OpenCore 0.6.9 正式版。
2、例行升级 kext 版本（AppleALC、IntelMausi、Lilu、NVMeFix、RestrictEvents、VirtualSMC、WhateverGreen）。
3、集成读卡器驱动，默认禁用，自行开启（已硬改的请忽略）；优化缓冲帧补丁。

2021-04-11
1、驱动风扇转速传感器驱动（iStat Menus、腾讯柠檬、Sensi等软件可正常识别风扇转速）。
2、更新 OpenCore 0.6.8 正式版。
3、例行升级 kext 版本（AppleALC、Lilu、NVMeFix、VirtualSMC、WhateverGreen）。
4、适配新版 UI 资源（Resources）：
（1）OpenCore 界面新增重启、关机操作，按 Tab 键切换。
（2）按数字键 0 可进入 OpenCore 界面（功能等同于 ESC/Option 键）。
（3）按 =/+ 键可设置默认系统（功能等同于 Ctrl 键）。

2021-03-12
1、修复不能检查系统更新的问题。注意：替换 EFI 后，重启进入 OC 界面执行“Reset NVRAM”才会生效。

2021-03-08
1、更新 OpenCore 0.6.7 正式版。
2、例行升级 kext 版本（AppleALC、Lilu、VirtualSMC、WhateverGreen）。
3、适配新版 UI 资源（Resources）。
4、此版本 UEFI 启动逻辑有变化，请务必替换 EFI 后，重启进入 OC 界面执行“Reset NVRAM”。

2021-01-08
1、更新 OpenCore 0.6.5 正式版。
2、例行升级 kext 版本（AppleALC、CPUFriend、IntelMausi、NVMeFix、WhateverGreen）。
3、更新 UI 资源（Resources）。
4、加入 RestrictEvents.kext。

2020-12-12
1、更新 OpenCore 0.6.4 正式版。
2、例行升级 kext 版本（Lilu、AirportBrcmFixup、AppleALC、VirtualSMC、WhateverGreen）。
3、增强在 macOS Big Sur 正式版的稳定性。升级到此版本强烈建议清空 nvram。

2020-11-06
1、更新 OpenCore 0.6.3 正式版。
2、修复了一些在 macOS Big Sur（Beta版）上的兼容性问题，准备迎接即将到来的 11.0 正式版。

2020-10-16
1、更新 OpenCore 0.6.2 正式版。
2、例行升级 kext 版本（Lilu、AirportBrcmFixup、AppleALC、CPUFriend、IntelMausi、NVMeFix、VirtualSMC、WhateverGreen）。NVMeFix 在配置文件中默认未启用，因为此驱动会对部分低端 NVMe 用户会产生负面影响，如果你使用我之前版本的引导没有遇到问题，可以自行选择改为启用。
3、上一版本中，去掉了 config.plist 中板载 Intel 蓝牙、板载 Intel Wi-Fi、USB wifi 网卡等驱动需要注册 kext 的配置代码，原因是在 OC 0.6.1 更新后，如果有在 config 中注册但 /EFI/OC/Kexts/ 下找不到的 kext 会开机卡苹果 logo（之前的版本不会）。但注册 kext 对很多小白用户造成不小困扰，因此此版本中还是默认集成了注册 kext，只是默认为禁用状态（Enabled 为 false）。根据自己需求将对应的 <key>Enabled</key> 下一行的“<false/>”改为“<true/>”即可（⚠️注意：修改 Enabled 为 true 之前确保 /EFI/OC/Kexts/ 下已经有对应 kext 驱动，否则重启会卡苹果 logo！！！板载蓝牙 kext 共 2 个、板载 Wi-Fi kext 共 1 个，USB wifi kext 共 2 个。）。

2020-09-17
1、更新 OpenCore 0.6.1 正式版。
2、例行升级 kext 版本（Lilu、AirportBrcmFixup、AppleALC、VirtualSMC、WhateverGreen）
3、此版 OC 的配置文件 config.plist 中，不再默认添加板载 Intel 蓝牙、板载 Intel Wi-Fi、USB wifi 网卡等配置，需要这些的请自行注册 kext。添加到 264 行，我写了一个样例 config-kexts-sample.plist 可供参考（⚠️注意：config-kexts-sample.plist 里加了 5 个kext，不需要都加，板载蓝牙两个 kext、板载 Wi-Fi 一个kext，USB wifi 两个kext。用到哪些加哪些，不需要的千万别加！！！）。

2020-08-20
1、此次版本为优化版。升级此版本建议清空nvram（使用 Hackintool 或进入 OC 启动菜单执行 Reset Nvram）
（1）解决了部分群友反馈的睡眠唤醒会引发重启的问题。
（2）解锁Wifi全频段，解决部分群友反馈休眠唤醒后网速降低的问题。

2020-08-05
1、别来无恙。由于适配 macOS Big Sur（11.16或11.0），OpenCore 停更了一个月，终于迎来 0.6.0 正式版。
（1）支持 Mojave、Catalina、Big Sur（我测试了Mojave、Catalina，群友测试了 Big Sur）
  ⚠️目前 Big Sur 仍处于 Beta 阶段，不建议小白用户以及 NUC 作为主力机的用户升级。
（2）添加新平台、新 CPU 支持，其他更新可查 OpenCore Changelog。
2、例行升级 kext 版本（Lilu、AppleALC、CPUFriend、NVMeFix、VirtualSMC、WhateverGreen）
3、此版本重新梳理了配置文件，增加了板载 Intel Wi-Fi 的相关内容，10.15 接近尾声，辞旧迎新。
再强调一下，关于双系统的逻辑，仍采用类似 Clover 的方式：单系统默认直接进系统，需通过 ESC/Option 键手动进入 OC 引导界面；双系统默认显示 OC 引导界面以便系统选择，并有倒计时，按任意按键打断倒计时，无操作则进入默认系统（回车键进入系统，Ctrl+回车设置为默认系统）。

2020-06-08
1、NDK OpenCore 停更，因此恢复到官方版分支，本次更新到 OpenCore 0.5.9 正式版
（1）引导界面全面支持 HIDPI。
（2）引导界面支持了 Ctrl+Enter 等快捷键。
（3）增加了对十代 CPU 的兼容性，以及其他内核特性更新，具体可查 OpenCore Changelog。
2、例行升级 kext 版本（Lilu、AppleALC、IntelMausi、VirtualSMC、WhateverGreen）
3、由于恢复到官方版 OC，切换系统的 W、X 快捷键会失效。因此调整了双系统的处理，采用更接近 Clover 的习惯：单系统默认不显示 OC 引导界面，双系统默认显示 OC 引导界面，并有倒计时，无操作则进入默认系统，回车进入系统，Ctrl+回车设置为默认系统。

2020-05-17
1、为照顾双系统用户，采用“NDK OpenCore 0.5.8”（感谢原作者 N-D-K，以及nuc②群的 @一杯美式咖啡☕不加奶 配合做双系统测试）
对于多系统的优势如下：
（1）支持系统选择热键。开机时连按 W 键可直接进入 Windows，连按 X 键可直接进入 macOS。
（2）开机默认启动到上次启动的系统。
（3）ACPI 补丁、仿冒苹果机型等信息，只对于 macOS 生效，不再影响其他系统（之前如果通过 OC 引导的 Windows，可能需要重新激活一下）

2020-05-08
1、更新 OpenCore 0.5.8 正式版
（1）OC 默认集成 APFS 驱动。
（2）增加 Bootstrap 特性，有助于避免 OC 引导被 windows 篡改（我没有双系统，效果有待测试）。
（3）引导界面的图标支持 hidpi（文字还不行，下个版本会支持）。
（4）引导界面增加倒计时支持，即，超时自动进入默认项（我的默认配置未开启，可自行尝试）。
2、例行升级 kext 版本（Lilu、AppleALC、VirtualSMC）

2020-04-21
1、修正 SIP 状态查询为“unknown”的问题。可通过命令“csrutil status”查询。

2020-04-16
1、早先升级 WhateverGreen.kext1.3.8 版本，通过启动参数（igfxfw=2）解锁核显性能，但经过几天群友使用反馈，兼容性略差（部分群友反馈 DP 黑屏），因此替换为魔改版（感谢 NUC①群的 @Forever 提供建议），可以完全释放核显性能。
2、精简了 OpenCore 部分配置参数（感谢 NUC③群的 @针针）。
3、针对使用板载蓝牙以及 USB 无线网卡的用户，简化配置难度。
4、去除 HibernationFixup，稳定起见，还是建议睡眠模式（hibernatemode）为 0。

2020-04-08
1、更新 OpenCore 0.5.7 正式版，优化 GUI 界面元素。更接近白果：
（1）默认直接进系统，开机后连续点按 ESC/Option 键开启引导 GUI 界面（⚠️注意是连续点按，不是长按！！）。
（2）GUI 界面下按空格出现附加项（Recovery、Reset NVRAM 等）。
（3）加入 UEFI Shell，一些场景下可免去 PE 完成引导救急（对小白不太友好），退出输入“exit”并回车。
2、例行升级 kext 版本（Lilu、AppleALC、WhateverGreen、VirtualSMC、NVMeFix）。
3、引入新 kext：HibernationFixup。

2020-03-08
1、开启 GUI 引导菜单页面，仿白果风格，支持空格键呼出 Recovery 和 Reset NVRAM（第一个预览版本的 GUI，目前还略显简陋，并且未对 HiDPI 优化，期待一下后续版本）。
2、完善 OpenCore 双系统相关配置以及说明（感谢 @123、@1 0、@Feeling、@传说 等NUC4号群的小伙伴们的配合测试及意见反馈）。

2020-03-04
1、更新 OpenCore 0.5.6 正式版，优化开机快捷键的支持，开机后按 ESC/Option 键开启引导菜单（⚠️注意是连续按，不是长按！！不按默认直接进系统）
2、例行升级 kext 版本（Lilu、AppleALC、WhateverGreen）

2020-02-04
1、更新 OpenCore 0.5.5 正式版
2、修正白果原生开机快捷键支持
3、例行升级 kext 版本（NVMeFix、AppleALC、VirtualSMC）
4、Intel 板载蓝牙向下兼容 10.14.6（⚠️注意：不支持低于 10.14.6。默认为关闭状态，需自行开启。详见上述《Intel 板载蓝牙驱动使用说明》）

2020-02-02
1、开启原生 NVRAM（支持使用 OC 启动菜单进入 Recovery 系统以及清除 NVRAM，方便双系统用户使用系统偏好设置中的“启动磁盘”切换系统）（感谢 @HCLOK168 制作 SSDT）
2、加入 NVMeFix 补丁，可降低 NVME SSD 的待机功耗和温度（对于原本 NVMe SSD 温度就不高的用户可能不明显，我这里测试降低 5～10 度）
3、加入 Intel 板载蓝牙支持（默认关闭，需自行开启，详见上述《Intel 板载蓝牙驱动使用说明》）

2020-01-15
1、更新 OpenCore 0.5.4 正式版（OC 选择系统页面现已支持上下方向键、以及通过 Ctrl+Enter 键设置默认启动盘）
2、更新 acidanthera 全家桶（Lilu、WhateverGreen、AppleALC 等）
3、加入内核补丁禁止 rtc 定时唤醒，修复 10.15.2 不能自动睡眠的 bug。
4、声卡layout-id改为14（0E），解决音量过小的问题。

2019-12-16
1、采用与豆子峡谷同款 CPU 的 Macbook Pro 13' 2018 款的 CPU 变频策略，从测试结果来看，调度更优秀，低频更低、待机更省电（感谢 @HCLOK168）
2、去除“关于本机”中 2048 MB 显存的修改，恢复成默认（1536 MB）

2019-12-08
1、修复 Mac mini 2018 机型在“关于本机”不显示内存页的问题
2、大幅精简了整个引导的体积（感谢 @豪客）

2019-12-04
1、更新 OpenCore 0.5.3正式版
2、更新 acidanthera 全家桶（Lilu、WhateverGreen、AppleALC等）


