@echo off
chcp 65001 1>nul
REM 使用 chcp 65001 声明 UTF8
setlocal enabledelayedexpansion

:do1
call %~dp0A-Install-Drivers.bat
call %~dp0A-Install-Software.bat
call %~dp0A-Set-PublicDesktop-QX.bat
call %~dp0A-Set-PublicDesktop.bat
call %~dp0A-KMS-Active-Office.bat
call %~dp0IT-Scripts\A-Set-StartUp.bat
call %~dp0A-Join-Wifi.bat
call %~dp0A-Join-Domain.bat
call %~dp0A-Fix-REG.bat
call %~dp0A-Clean.bat

echo 所有任务执行完毕，请检查。若已安装驱动，将在重启后生效。
TIMEOUT /T 20 /NOBREAK
shutdown -r -f -t  1
goto:eof
