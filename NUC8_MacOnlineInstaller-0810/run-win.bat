@echo off
title NUC8-macOS 在线安装U盘-制作工具

:MAINMENU
cls
color F2
echo          ╔════════════════════════════════════════════════╗
echo          ║           macOS 在线安装U盘-制作工具           ║
echo          ║                         2020-03-11 by 维奇-东篱║
echo          ║                                                ║
echo          ║     无需下载体积庞大的macOS安装包...           ║
echo          ║                   体验稳如白果的在线安装...    ║
echo          ║                                                ║
echo          ║  使用说明：                                    ║
echo          ║   1、准备Fat32格式的U盘，剩余空间大于500MB     ║
echo          ║   2、将 macOS-online-installer.zip、EFI-OC-    ║
echo          ║      xxxxxx.zip 拷贝至U盘根目录并分别解压      ║
echo          ║   3、运行NUC8_MacOnlineInstaller中的run-win.bat║
echo          ║   4、按照提示下载完成后，将U盘插上NUC          ║
echo          ║   5、NUC开机，按住command/win键并持续点按R键   ║
echo          ║   6、Cmd+R会激活Recovery模式启动，进入安装     ║
echo          ║   7、后续安装过程，请参考我的图文教程          ║
echo          ║                                                ║
echo          ║  如想了解更多 NUC8ixBE 豆子峡谷安装黑苹果知识，║
echo          ║          请查阅我的文章   http://u.nu/nuc8     ║
echo          ║                                                ║
echo          ║   欢迎加入 Intel NUC Community Q群：1071610369 ║
echo          ╚════════════════════════════════════════════════╝                      

echo "需要先下载约500MB的Recovery镜像，本工具支持以下版本的macOS安装"
echo "1：macOS Catalina - 10.15.x"
echo "2：macOS Mojave   - 10.14.6"
set /p num=请输入对应数字选择版本：

if exist ..\com.apple.recovery.boot (
   rmdir /s/q ..\com.apple.recovery.boot
)
mkdir ..\com.apple.recovery.boot
echo macOS Boot From Recovery > ..\com.apple.recovery.boot\.contentDetails
echo 开始下载，请等待...
if "%num%"=="2" (
   python\python.exe python/macrecovery3.pyc -b Mac-7BA5B2DFE22DDD8C -m 00000000000KXPG00 -o ../com.apple.recovery.boot download
) else (
   python\python.exe python/macrecovery3.pyc -o ../com.apple.recovery.boot download
)
echo 在线安装U盘制作完成，按任意键退出... & pause & exit
