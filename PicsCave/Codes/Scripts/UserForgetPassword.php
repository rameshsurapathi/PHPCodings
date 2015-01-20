<?php
include_once('../Config/Config.php');

if($_POST['request']=="userforgetpassword"){
$femail = mysql_real_escape_string($_POST['femail']);
$query = mysql_query("select UserId,FirstName,Password from user where Email='$femail' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
$firstname = $row['FirstName'];
$password = $row['Password'];
}

$newquery = mysql_query("select Text from md5passwords where UserId='$userid' and md5Value='$password'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
while($nrow = mysql_fetch_array($newquery)){
$passwordtext = $nrow['Text'];
}
}


echo '1';

$to = $femail;
$subject = "Forget Password";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname.", Your Login Account Details.</p>
<p>Email Id : ".$femail."</p>
<p>Password : ".$passwordtext."</p>
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

