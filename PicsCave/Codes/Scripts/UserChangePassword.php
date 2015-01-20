<?php
include_once('../Config/Config.php');

if($_POST['request']=="changepassword"){
$oldpassword = mysql_real_escape_string($_POST['oldpassword']);
$newpassword = mysql_real_escape_string($_POST['newpassword']);
$oldpassword = md5($oldpassword);
$query = mysql_query("Select Id from user where UserId='".$_SESSION['authenticateduser']."' and Password='$oldpassword'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$newpassword1 = md5($newpassword);

$newquery1 = mysql_query("update md5passwords SET md5Value='$newpassword1',Text='$newpassword' where UserId='".$_SESSION['authenticateduser']."' and md5Value='$oldpassword'") or die(mysql_error());

$newquery = mysql_query("update user SET Password='$newpassword1' where UserId='".$_SESSION['authenticateduser']."' and Password='$oldpassword'") or die(mysql_error());



echo '1';

$query = mysql_query("select FirstName,Email from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$email = $row['Email'];
}
}


$to = $email;
$subject = "Password Change";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname.", Your Password has been changed Successfully.</p>
<p>If you are unaware of your password change,then immediately report to us.</p>
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
?>