@echo off
title NUC8-macOS 在线安装U盘-制作工具

:MAINMENU
cls
color F2
echo          ╔════════════════════════════════════════════════╗
echo          ║           macOS 在线安装U盘-制作工具           ║
echo          ║                            2020-11-23 by 维奇  ║
echo          ║                                                ║
echo          ║     无需下载体积庞大的macOS安装包...           ║
echo          ║                   体验稳如白果的在线安装...    ║
echo          ║                                                ║
echo          ║  感谢您的付费支持，维护不易，且用且珍惜。      ║
echo          ║  本工具唯一下载地址：                          ║
echo          ║   https://mianbaoduo.com/o/bread/Y5mTkp8=      ║
echo          ║                                                ║
echo          ║  如想了解更多 NUC8ixBE 豆子峡谷安装黑苹果知识，║
echo          ║          请查阅我的文章   http://u.nu/bean     ║
echo          ║                                                ║
echo          ║   欢迎加入 Intel NUC Community Q群：256060013  ║
echo          ╚════════════════════════════════════════════════╝                      

echo "需要先下载约500MB的Recovery镜像，本工具支持以下版本的macOS安装"
echo "1：macOS Big Sur  - 11.x"
echo "2：macOS Catalina - 10.15.7"
echo "3：macOS Mojave   - 10.14.6"
set /p num=请输入对应数字选择版本：

if "%num%"=="1" if "%num%"=="2" if "%num%"=="3" goto 1
if "%num%" neq "1" if "%num%" neq "2" if "%num%" neq "3" goto 0
:1
if exist ..\com.apple.recovery.boot (
    rmdir /s/q ..\com.apple.recovery.boot
)
mkdir ..\com.apple.recovery.boot
echo macOS Boot From Recovery > ..\com.apple.recovery.boot\.contentDetails
echo 【开始下载...（如下载过程中停住请尝试敲击回车）】
python\python.exe python/macrecovery3.pyc -w "%num%" download
echo 【在线安装U盘制作结束，按任意键退出...】 & pause & exit
:0
echo 退出程序... & pause & exit
