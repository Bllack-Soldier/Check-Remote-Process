function Check-Bot {
[CmdletBinding(SupportsShouldProcess=$true,ConfirmImpact='Medium')]
    
#this static cmdlet just call by another process to check specified processes and call result back 


$bot1="process name 1"
$bott2="process name 2"
$bot3="process name 3"
$bot4="process name 4"
$bot5="process name 5"
$bot6="process name 6"
$bott7="process name 7"
$bott8="process name 8"
$bott9="process name 9"
$bot10="process name 10"


    $list1=$bott2,$bott7,$bott8,$bott9
    $list2=$bot1,$bot3,$bot4,$bot5,$bot6,$bot10
    $location1="D:\files"
    $location2="D:\files"


foreach($bot in $list2){
        
            $wa= Get-Process -Name $bot -ErrorAction SilentlyContinue

    if($wa -ne $null){Write-Host "$bot is Connected"}else {
        Write-Verbose "Reconnecting..."

        
        cd $location2
        
        Start-Process .\$bot

        Write-Verbose "$bot is Connected" }
}




foreach($bott in $list1){

            $wa= Get-Process -name $bott -ErrorAction SilentlyContinue

    if($wa -ne $null){Write-Host "$bott is Connected"}else {
        Write-Verbose "Reconnecting..."

        
        cd $location1
        
        Start-Process .\$bott

        Write-Verbose "$bott is Connected" }



}
}