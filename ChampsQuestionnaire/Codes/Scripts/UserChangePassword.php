<?php
session_start();
include_once('../Config/Config.php');

if($_POST['request']=="changepassword"){
$oldpassword = mysql_real_escape_string($_POST['oldpassword']);
$newpassword = mysql_real_escape_string($_POST['newpassword']);
$oldpassword = md5($oldpassword);
$query = mysql_query("Select UserId from users where UserId='".$_SESSION['authenticateduser']."' and Password='$oldpassword'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$newpassword1 = md5($newpassword);
$newquery1 = mysql_query("update md5encrypts SET md5Value='$newpassword1',Text='$newpassword' where UserId='".$_SESSION['authenticateduser']."' and md5Value='$oldpassword'") or die(mysql_error());
$newquery = mysql_query("update users SET Password='$newpassword1' where UserId='".$_SESSION['authenticateduser']."' and Password='$oldpassword'") or die(mysql_error());
$numRows = mysql_affected_rows();
echo '1';
}
else{
echo '0';
}
}
?>