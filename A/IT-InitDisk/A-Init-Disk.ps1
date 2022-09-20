Write-Host '正在分区并格式化...'

$max_size = (Get-Partition -DriveLetter C).Size / 1024 / 1024 / 1024
if ($max_size -gt 400)
{
    Resize-Partition -DriveLetter C -size (200 * 1024 * 1024 * 1024)
    Get-Partition -DriveLetter D| Set-Partition -NewDriveLetter Y
    New-Partition -DiskNumber 0 -UseMaximumSize -AssignDriveLetter | Format-Volume -FileSystem NTFS -AllocationUnitSize 4096 -NewFileSystemLabel "本地磁盘"
    Write-Host "硬盘大于 400G，C 盘保留 200G，其他为 D 盘。"
}
elseif ($max_size -gt 150)
{
    Resize-Partition -DriveLetter C -size (150 * 1024 * 1024 * 1024)
    Get-Partition -DriveLetter D| Set-Partition -NewDriveLetter Y
    New-Partition -DiskNumber 0 -UseMaximumSize -AssignDriveLetter | Format-Volume -FileSystem NTFS -AllocationUnitSize 4096 -NewFileSystemLabel "本地磁盘" 
    Write-Host "硬盘大于 150G，C 盘保留 150G，其他为 D 盘。"
}
else
{
    Write-Host "硬盘小于 150G，无需执行分区。"  
}
