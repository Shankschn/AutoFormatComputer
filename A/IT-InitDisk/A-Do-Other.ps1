Start-Sleep -Seconds 5
Write-Host 查找 auto-task2.bat
$drives = (Get-PSDrive -PSProvider FileSystem).Root
$has_auto_task = 0
ForEach ($drive in $drives) {
    $auto_script = $drive + "auto-task2.bat"
    if (Test-Path $auto_script) {
        $has_auto_task = 1
        Write-Host $auto_script
        break
    }
}

if ($has_auto_task -eq 1) {
    Write-Host 找到 auto-task2.bat 正在调用...
    cmd.exe /c $auto_script
} else {
    Write-Host 未找到 auto-task2.bat
}
