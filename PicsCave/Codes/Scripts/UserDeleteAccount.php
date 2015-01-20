<?php
include_once('../Config/Config.php');

if($_POST['request']=="deleteuseraccount"){
$userpass = mysql_real_escape_string($_POST['userpass']);
$userpass1 = md5($userpass);
$query = mysql_query("select FirstName from user where UserId='".$_SESSION['authenticateduser']."' and Password='$userpass1'") or die(mysql_error());
if(mysql_num_rows($query)>0){

// In future
//$newquery = mysql_query("update user SET Activation='0' and Status='0' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

// present
include_once('NoEntry/DeleteAllContents.php');

while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
}

echo '1';



$to = $femail;
$subject = "Account Deleted";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname.", Your Account has been deleted successfully.</p>
<p>Thanks for being a part of PicsCave.com</p>
<p>If you are unaware of your Account deletion,then immediately report to us.</p>
<p>Go To PicsCave.com : http://www.PicsCave.com/</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

unset($_SESSION['authenticateduser']);

}
else{
echo '0';
}
exit();
}

