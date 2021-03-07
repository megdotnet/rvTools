#variables for mail message
$from = "rvtools@mnpass.local"
$to = @("meghan.fairbanks@transcore.com")
$subject = "RVTools"
$body = "Weekly RVTools Reports"
$smtpserver = "10.202.101.35"
$filepath1 = "C:\temp\vHealth.xlsx"
$filepath2 = "C:\temp\vDatastore.xlsx"
$port = 587

#send mail message
Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $smtpserver -Attachments $filepath1,$filepath2 -Port $port
