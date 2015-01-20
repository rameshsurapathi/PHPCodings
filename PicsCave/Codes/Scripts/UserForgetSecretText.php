<?php
include_once('../Config/Config.php');

if($_POST['request']=="userforgetsecrettext"){
$fsemail = mysql_real_escape_string($_POST['fsemail']);
$query = mysql_query("select * from user where UserId='".$_SESSION['authenticateduser']."' and Email='$fsemail'") or die(mysql_error());
if(mysql_num_rows($query)>0){

while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
}


$newquery = mysql_query("select SecretText from textwatermark where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$secrettext =$nrow['SecretText'];
}

$newquery1 = mysql_query("select Text from md5secrettexts where UserId='".$_SESSION['authenticateduser']."' and md5Value='$secrettext'") or die(mysql_error());
while($n1row = mysql_fetch_array($newquery1)){
$stext = $n1row['Text'];
}

echo '1';

$to = $fsemail;
$subject = "Forget Secret Text";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname.", Your Secret Text is '.$stext.'</p>
<p>Go To PicsCave.com : http://www.PicsCave.com/</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

}
else{
echo '0';
}
exit();
}

