$acl_path = "C:\Users\Public\Desktop"
$new_acl = Get-Acl -Path $acl_path
$user = "INTERACTIVE"
$qx = "Modify"
$qx_type = "Allow"
$jc = "ContainerInherit, ObjectInherit"
$zw = "None"
$ara_list = $user, $qx, $jc, $zw, $qx_type
$ar = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $ara_list
$new_acl.setAccessRule($ar)
Set-Acl -Path $acl_path -AclObject $new_acl
(Get-Acl -Path $acl_path).AccessToString