# INÍCIO

# DEFINIÇÃO DE VARIÁVEL

$responsavel = "SEU NOME" 
$data = Get-Date -format "dd/MM/yyyy HH:mm:ss"

$de = "SEU EMAIL" 
$smtp = "smtp.outlook.com"
$porta = "587"
$para = "Destinatário"


$assunto = "DISPARO AUTOMÁTICO DIÁRIO - $data"
$Body = "RELATÓRIO DIÁRIO - AUTOMÁTICO:`n
`DATA: $data `n`nDESCRIÇÃO: Este é um e-mail automático, por favor não responda! `n`n Em caso de dúvidas ou necessidade de suporte contate o service desk para atendimento."


$anexo1 = "C:\PowerShell\SendMail\REPORT.csv" #Você pode especificar manualmente o caminho onde o arquivo que será enviado por e-mail, encontra-se, vale dizer, onde ele está armazenado no seu computador.

# ENVIAR E-MAIL

$Message = New-Object System.Net.Mail.MailMessage
$Message.Subject = $assunto
$Message.Body = $Body
$Message.IsBodyHtml = $false
$Message.To.Add( $para)
$Message.From = $de.Replace("=", "@") # For providers that use = instead @ to identify username
$attachment1 = new-object Net.Mail.Attachment($anexo1)
$message.attachments.add($attachment1)
$SMTP = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);

$SMTPServer = “smtp.outlook.com”
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($de, “SENHA DO SEU E-MAIL”);
$SMTPClient.Send($Message)

# FIM