@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8

echo 执行步骤：激活 Office 2016
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /sethst:10.10.3.98
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /act