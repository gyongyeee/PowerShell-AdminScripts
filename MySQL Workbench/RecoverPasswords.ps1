cd $env:APPDATA\MySQL\Workbench
$cipher = Get-Content workbench_user_data.dat -Encoding Byte
Add-Type -AssemblyName System.Security
$scope = [System.Security.Cryptography.DataProtectionScope]::CurrentUser
$mysqlpwd = [System.Security.Cryptography.ProtectedData]::Unprotect($cipher, $null, $scope )
[System.Text.UTF8Encoding]::UTF8.GetString($mysqlpwd)