@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 执行步骤：修正注册表

REG add HKLM\System\CurrentControlSet\Control\Power /v PlatformAoAcOverride /t REG_DWORD /d 0