<?php
include_once('../Config/Config.php');

if($_POST['request']=="newuserlogin"){
$username = mysql_real_escape_string($_POST['username']);
$userpass = mysql_real_escape_string($_POST['userpass']);
$pass = md5($userpass);
$query = mysql_query("select UserId from user where Email='$username' and Password='$pass' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
}
$_SESSION['authenticateduser'] = $userid;
echo '1';
}
else{
echo '0';
}
exit();
}
?>