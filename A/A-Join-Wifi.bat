@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 执行步骤：联网 XGIMI-IT

netsh wlan add profile filename="%~dp0xgimi-it.xml" user=all

TIMEOUT /T 5 /NOBREAK
ping xgimi.com