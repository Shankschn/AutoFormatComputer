@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 执行步骤：安装程序

echo 正在安装 Office
start "" /D  %~dp0IT-Software\Office2016 /WAIT /B setup.exe /config config_no_show.xml
echo 正在安装 Chrome
start "" /D  %~dp0IT-Software  /WAIT /B Chrome.exe /silent /install
echo 正在安装 Sogou
start "" /D  %~dp0IT-Software  /WAIT /B Sogou.exe /S
echo 正在安装 360Zip
start "" /D  %~dp0IT-Software /B 360zip.exe  /S
echo 正在安装 Foxmail
start "" /D  %~dp0IT-Software  /WAIT /B Foxmail.exe c:\FoxMail -data c:\FoxMailData -silent
echo 正在安装 WeCom
start "" /D  %~dp0IT-Software  /WAIT /B WeCom.exe  /S
echo 正在安装 TencentMeeting
start "" /D  %~dp0IT-Software  /WAIT /B TencentMeeting.exe  /S
echo 正在安装 RunAsRob
start "" /D  %~dp0IT-Software /WAIT /B RunAsRob.exe /install /quiet
echo 正在安装 AdobeReader
start "" /D  %~dp0IT-Software /WAIT /B AcroRdrDC.exe  /sAll /rs /msi EULA_ACCEPT=YES
echo 正在安装 ZBox
start "" /D  %~dp0IT-Software /WAIT /B zBox.exe /silent
echo 正在安装 VPN
start "" /D  %~dp0IT-Software /B VPN.exe