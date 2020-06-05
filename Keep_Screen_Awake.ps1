<#Read Me:
    Developed By:
                Name:Vaneeswaran N
                www.vaneeswaran.com

#Descrption    : To Keep the screen awake
#>
$myshell = New-Object -com "Wscript.Shell"

for (;;) {
  Start-Sleep -Seconds 60
  $myshell.sendkeys("{NUMLOCK}")
}