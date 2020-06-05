<#Read Me:
    Developed By:
                Name:Vaneeswaran N
                www.vaneeswaran.com

#Function Name : get_free_room
#Descrption    : On a given day this will list the status of each half hour whether the user / (meeting room email) is free or not
#Note : This script expects the outlook app installed and configured in your machine where you are executing this scripts
#>

function get_free_room {
 Add-type -assembly "Microsoft.Office.Interop.Outlook" | out-null 
 $olFolders = "Microsoft.Office.Interop.Outlook.OlDefaultFolders" -as [type]  
 $outlook = new-object -comobject outlook.application 
 $namespace = $outlook.GetNameSpace("MAPI") 
$room = $namespace.CreateRecipient("Meeting Room Email")


$free = $room.FreeBusy("2019-10-17", 30)

for ($i = 0; $i -le 24; $i ++)
{
	# On a given day this will list the status of each half hour whether the user is free or not 
    Write-Host("$i- " + $free.substring($i*2, 2));
}

}


[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")  
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
[void] [System.Windows.Forms.Application]::EnableVisualStyles()  
 
$Form = New-Object system.Windows.Forms.Form 
$Form.ShowDialog()