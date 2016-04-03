function sendmailPowerShell3()
{  
    Send-MailMessage -to 'User01 <user01@example.com>' -from 'User02 <user02@example.com>' -subject 'Test mail' -Credential $cred
}

function sendmailPowerShell2()
{  
    $SendTo = ''
    $emailSmtpServer = ''
    $emailSmtpServerPort = '587'
    $emailSmtpUser = ''
    $emailSmtpPass = ''
    $emailMessage = New-Object System.Net.Mail.MailMessage
    $emailMessage.From = ''
    foreach ($adress in $SendTo){$emailMessage.To.Add( $adress )}
    $date = Get-Date
    $emailMessage.Subject = 'package is here?!'
    $emailMessage.IsBodyHtml = $true
    $emailMessage.Body = "<html><div>go here: http://www.israelpost.co.il/itemtrace.nsf/mainsearch</div><div>use this Id: $Id</div></html>"
    $SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )
    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );
    $SMTPClient.EnableSsl = $true
    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );
    $SMTPClient.Send( $emailMessage )
}