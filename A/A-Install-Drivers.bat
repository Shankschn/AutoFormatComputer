@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明，采用UTF-8编码

echo 执行步骤：安装驱动

set "driver=none"
echo 检查电脑型号
wmic csproduct get Name

wmic csproduct get Name |findstr 5330 >nul 2>&1 && set "driver=dell5330"
if "%driver%"=="dell5330" (
    pnputil  /add-driver  %~dp0IT-Drivers\5330\*.inf /subdirs /install
    echo 驱动安装结束。
    goto:eof
)


wmic csproduct get Name |findstr 5320 >nul 2>&1 && set "driver=dell5320"
if "%driver%"=="dell5320" (
    pnputil  /add-driver  %~dp0IT-Drivers\5320\*.inf /subdirs /install
    pnputil /remove-device "PCI\VEN_8086&DEV_46A6&SUBSYS_0B3D1028&REV_0C\3&11583659&0&10"
    pnputil /scan-devices
    echo 驱动安装结束。
    goto:eof
)

wmic csproduct get Name |findstr 5310 >nul 2>&1 && set "driver=dell5310"
if "%driver%"=="dell5310" (
    pnputil  /add-driver  %~dp0IT-Drivers\5310\*.inf /subdirs /install
    echo 驱动安装结束。
    goto:eof
)

wmic csproduct get Name |findstr WXX9 >nul 2>&1 && set "driver=WXX9"
if "%driver%"=="WXX9" (
    pnputil  /add-driver  %~dp0IT-Drivers\NBD-WXX9\*.inf /subdirs /install
    echo 驱动安装结束。
    goto:eof
)

wmic csproduct get Name |findstr WAX9N >nul 2>&1 && set "driver=WAX9N"
if "%driver%"=="WAX9N" (
    pnputil  /add-driver  %~dp0IT-Drivers\NBLB-WAX9N\*.inf /subdirs /install
    echo 驱动安装结束。
    goto:eof
)


if %driver%==none (
    echo 无此型号驱动，请手动安装。
    goto:eof
)
