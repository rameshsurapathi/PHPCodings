<?php
include_once('../Config/Config.php');

if($_POST['request']=="resendlink"){
$email = mysql_real_escape_string($_POST['email']);
$query = mysql_query("select UserId,FirstName from user where Email='$email' and Activation='0' and Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
$firstname = $row['FirstName'];
}


$to = $email;
$subject = "Complete your registration";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname."</p>
<p>Welcome To PicsCave.com. You are just one step away from connecting to our Website.</p>
<p>Click the link below to complete your registration :
http://www.PicsCave.com/Scripts/UserActivation.php?request=useractivation&&userid=".$userid."</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

echo '1';

exit();
}
?>