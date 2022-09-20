@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 执行步骤：设置公共桌面

REM robocopy /S /COPY:DAT IT-PublicDesktop\ C:\IT\ *
robocopy /S /COPY:DAT  %~dp0\IT-PublicDesktop\ C:\Users\Public\Desktop\ *
