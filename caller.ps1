$pass="your-password"
$username="your-username"
$sec_string_pass=ConvertTo-SecureString $pass -AsPlainText -Force
$credob=new-object System.Management.Automation.PSCredential ($username,$sec_string_pass)
$s=New-PSSession -ComputerName 127.0.0.1 -Credential $credob

Invoke-Command -Session $s -ScriptBlock{Check-Bot
Get-PSSession | Remove-PSSession}
Disconnect-PSSession -session $s

