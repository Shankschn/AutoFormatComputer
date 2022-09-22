# AutoFormatComputer
自动化装机。

# 原理
在原版镜像中插入后执行任务（此处使用 NTLite），无人值守安装成功后，在所有分区根目录下查找 auto-task.bat 并执行。
由 auto-task.bat 调用后续脚本，以实现压缩 C 盘并创建 D 盘，安装驱动、软件，修改注册表，激活 Windows、Office，设置桌面、桌面权限，加入 Wifi，加域等一系列操作。

# 需要修改的地方
待更新