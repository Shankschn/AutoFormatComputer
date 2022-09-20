@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 初始步骤：自动分区

robocopy /S /COPY:DAT  %~dp0\IT-InitDisk\ C:\IT\ *
call C:\IT\A-Init-Disk.bat