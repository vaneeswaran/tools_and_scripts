<#Read Me:
    Developed By:
                Name:Vaneeswaran N
                www.vaneeswaran.com

#Function Name : Send_Email
#Descrption    : Used to Send Mail
#Argument      : Subject and Body of the Mail 
#
#Note : This script expects the outlook app installed and configured in your machine where you are executing this scripts
#>
    function Send_Email($To, $Subject, $Body)
    {
        echo "Sending Email Started.... "

        try
        {
            $olFolderInbox = 6
            $Outlook = New-Object -ComObject Outlook.Application
         $Mail = $Outlook.CreateItem(0)
         $Mail.To =$To 
         $Mail.Subject = $Subject
         $Mail.Body =$Body
            if($Body.length -gt 10) #Check to mail body is more than 10 char
            {
                $Mail.Send()
                $global:Function_Status = $true
            }
            Remove-Variable Outlook
            Remove-Variable Mail
        }
        catch
        {
             write-host “Caught an exception:” -ForegroundColor Red
             write-host “Exception Type: $($_.Exception.GetType().FullName)” -ForegroundColor Red
             write-host “Exception Message: $($_.Exception.Message)” -ForegroundColor Red
        }
        echo "Sending Email Completed.... "
       
    }
 
Send_Email  testme@gmail.com "Mail Subject here" "Mail Body Here"