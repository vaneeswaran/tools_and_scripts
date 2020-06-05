<#Read Me:
    Developed By:
                Name:Vaneeswaran N
                www.vaneeswaran.com

#Descrption    :Sample code how we can trigger Windows Forms Using powershell
#>

Function Button_Click()
{
    [System.Windows.Forms.MessageBox]::Show("Hello World." , "My Dialog Box")
	./Auto.ps1
}
Add-Type -AssemblyName System.Windows.Forms
$form = New-Object Windows.Forms.Form
$form.Size = New-Object Drawing.Size @(200,100)
$form.StartPosition = "CenterScreen"
$btn = New-Object System.Windows.Forms.Button
$btn.add_click({Button_Click})
$btn.Text = "Click here"
$form.Controls.Add($btn)
$drc = $form.ShowDialog()